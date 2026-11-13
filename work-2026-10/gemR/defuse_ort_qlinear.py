#!/usr/bin/env python3
"""Defuse unsupported ORT QLinear ops back to standard ONNX operators.

By default QLinearConv is retained so the probe exercises the importer's own
lowering. With ``--conv-mode integer``, it is expanded to ConvInteger, int32
bias addition, and explicit requantization. QLinearAdd,
QLinearGlobalAveragePool, and QGemm are always expanded to their standard
floating operator bracketed by DequantizeLinear and QuantizeLinear. This
avoids missing type inference for Microsoft-domain operators while preserving
their declared quantized semantics.
"""

import argparse
from pathlib import Path

import numpy as np
import onnx
from onnx import helper, numpy_helper

ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / "resnet50.q.int8.ort_optimized.onnx"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--conv-mode",
        choices=("retain", "integer", "signed-integer"),
        default="retain",
        help="retain QLinearConv or expand it to explicit ConvInteger",
    )
    return parser.parse_args()


args = parse_args()
output_suffix = {
    "retain": "ort_qconv_qdq",
    "integer": "ort_convinteger_qdq",
    "signed-integer": "ort_signed_convinteger_qdq",
}[args.conv_mode]
output = ROOT / f"resnet50.q.int8.{output_suffix}.onnx"

model = onnx.load(SOURCE)
initializers = {initializer.name: numpy_helper.to_array(initializer) for initializer in model.graph.initializer}
nodes = []
replaced_by_kind = {
    "QLinearConv": 0,
    "QLinearAdd": 0,
    "QLinearGlobalAveragePool": 0,
    "QGemm": 0,
}
for node in model.graph.node:
    if node.op_type == "QLinearConv" and args.conv_mode != "retain":
        if len(node.input) not in (8, 9) or len(node.output) != 1:
            raise RuntimeError(f"unexpected QLinearConv signature at {node.name!r}")
        constant_inputs = (
            node.input[1],
            node.input[3],
            node.input[4],
            node.input[5],
            node.input[6],
            node.input[7],
        )
        if any(name not in initializers for name in constant_inputs):
            raise RuntimeError(f"QLinearConv scales must be constant at {node.name!r}")
        input_scale = initializers[node.input[1]]
        weight_scale = initializers[node.input[4]]
        if input_scale.shape or weight_scale.shape:
            raise RuntimeError(f"only per-tensor QLinearConv is supported at {node.name!r}")

        conv_input_name = node.input[0]
        conv_input_zero_point_name = node.input[2]
        conv_weight_name = node.input[3]
        conv_weight_zero_point_name = node.input[5]
        weight = initializers[node.input[3]]
        weight_zero_point = initializers[node.input[5]]
        if args.conv_mode == "signed-integer":
            input_zero_point = initializers[node.input[2]]
            if input_zero_point.shape or input_zero_point.dtype != np.uint8:
                raise RuntimeError(f"signed conversion requires scalar uint8 input zero point at {node.name!r}")
            if int(input_zero_point) != 128:
                raise RuntimeError(f"signed conversion requires input zero point 128 at {node.name!r}")
            input_centered_u8 = f"{node.output[0]}__input_centered_u8"
            conv_input_name = f"{node.output[0]}__input_i8"
            input_offset_name = f"{node.output[0]}__input_offset_u8"
            conv_input_zero_point_name = f"{node.output[0]}__input_zero_point_i8"
            model.graph.initializer.extend(
                [
                    numpy_helper.from_array(
                        np.asarray(128, dtype=np.uint8),
                        input_offset_name,
                    ),
                    numpy_helper.from_array(
                        np.asarray(0, dtype=np.int8),
                        conv_input_zero_point_name,
                    ),
                ]
            )
            nodes.extend(
                [
                    helper.make_node(
                        "Add",
                        [node.input[0], input_offset_name],
                        [input_centered_u8],
                        name=f"{node.name}__center_input_u8",
                    ),
                    helper.make_node(
                        "Cast",
                        [input_centered_u8],
                        [conv_input_name],
                        name=f"{node.name}__cast_input_i8",
                        to=onnx.TensorProto.INT8,
                    ),
                ]
            )
        elif weight.dtype == np.int8:
            if weight_zero_point.shape or int(weight_zero_point) != 0:
                raise RuntimeError(f"signed QLinearConv weight must have scalar zero point 0 at {node.name!r}")
            conv_weight_name = f"{node.output[0]}__uint8_weight"
            conv_weight_zero_point_name = f"{node.output[0]}__uint8_weight_zero_point"
            model.graph.initializer.extend(
                [
                    numpy_helper.from_array(
                        (weight.astype(np.int16) + 128).astype(np.uint8),
                        conv_weight_name,
                    ),
                    numpy_helper.from_array(
                        np.asarray(128, dtype=np.uint8),
                        conv_weight_zero_point_name,
                    ),
                ]
            )

        accumulator = f"{node.output[0]}__accumulator"
        biased_accumulator = accumulator
        conv_attributes = {attribute.name: helper.get_attribute_value(attribute) for attribute in node.attribute}
        nodes.append(
            helper.make_node(
                "ConvInteger",
                [
                    conv_input_name,
                    conv_weight_name,
                    conv_input_zero_point_name,
                    conv_weight_zero_point_name,
                ],
                [accumulator],
                name=f"{node.name}__conv_integer",
                **conv_attributes,
            )
        )
        if len(node.input) == 9:
            bias_name = node.input[8]
            if bias_name not in initializers:
                raise RuntimeError(f"QLinearConv bias must be constant at {node.name!r}")
            bias = initializers[bias_name]
            if bias.ndim != 1:
                raise RuntimeError(f"unexpected QLinearConv bias shape at {node.name!r}")
            broadcast_bias_name = f"{node.output[0]}__broadcast_bias"
            model.graph.initializer.append(
                numpy_helper.from_array(
                    np.asarray(bias.reshape(1, bias.shape[0], 1, 1), dtype=np.int32),
                    broadcast_bias_name,
                )
            )
            biased_accumulator = f"{node.output[0]}__biased_accumulator"
            nodes.append(
                helper.make_node(
                    "Add",
                    [accumulator, broadcast_bias_name],
                    [biased_accumulator],
                    name=f"{node.name}__add_bias",
                )
            )

        output_scale = initializers[node.input[6]]
        output_zero_point = initializers[node.input[7]]
        if output_scale.shape or output_zero_point.shape:
            raise RuntimeError(f"QLinearConv output quantization must be per-tensor at {node.name!r}")
        if output_zero_point.dtype != np.uint8:
            raise RuntimeError(f"only uint8 QLinearConv output is supported at {node.name!r}")
        requant_scale_name = f"{node.output[0]}__requant_scale"
        clip_min_name = f"{node.output[0]}__clip_min"
        clip_max_name = f"{node.output[0]}__clip_max"
        output_zero_point_float_name = f"{node.output[0]}__output_zero_point_float"
        model.graph.initializer.extend(
            [
                numpy_helper.from_array(
                    np.asarray(input_scale * weight_scale / output_scale, dtype=np.float32),
                    requant_scale_name,
                ),
                numpy_helper.from_array(
                    np.asarray(-int(output_zero_point), dtype=np.float32),
                    clip_min_name,
                ),
                numpy_helper.from_array(
                    np.asarray(255 - int(output_zero_point), dtype=np.float32),
                    clip_max_name,
                ),
                numpy_helper.from_array(
                    np.asarray(int(output_zero_point), dtype=np.float32),
                    output_zero_point_float_name,
                ),
            ]
        )
        accumulator_float = f"{node.output[0]}__accumulator_float"
        scaled_float = f"{node.output[0]}__scaled_float"
        clipped_float = f"{node.output[0]}__clipped_float"
        rounded_float = f"{node.output[0]}__rounded_float"
        shifted_float = f"{node.output[0]}__shifted_float"
        nodes.extend(
            [
                helper.make_node(
                    "Cast",
                    [biased_accumulator],
                    [accumulator_float],
                    name=f"{node.name}__cast_accumulator",
                    to=onnx.TensorProto.FLOAT,
                ),
                helper.make_node(
                    "Mul",
                    [accumulator_float, requant_scale_name],
                    [scaled_float],
                    name=f"{node.name}__requantize",
                ),
                helper.make_node(
                    "Clip",
                    [scaled_float, clip_min_name, clip_max_name],
                    [clipped_float],
                    name=f"{node.name}__clip",
                ),
                helper.make_node(
                    "Round",
                    [clipped_float],
                    [rounded_float],
                    name=f"{node.name}__round",
                ),
                helper.make_node(
                    "Add",
                    [rounded_float, output_zero_point_float_name],
                    [shifted_float],
                    name=f"{node.name}__add_output_zero_point",
                ),
                helper.make_node(
                    "Cast",
                    [shifted_float],
                    list(node.output),
                    name=f"{node.name}__cast_output",
                    to=onnx.TensorProto.UINT8,
                ),
            ]
        )
        replaced_by_kind[node.op_type] += 1
        continue

    if node.op_type == "QLinearAdd":
        if len(node.input) != 8 or len(node.output) != 1:
            raise RuntimeError(f"unexpected QLinearAdd signature at {node.name!r}")
        a_float = f"{node.output[0]}__a_float"
        b_float = f"{node.output[0]}__b_float"
        sum_float = f"{node.output[0]}__sum_float"
        nodes.extend(
            [
                helper.make_node(
                    "DequantizeLinear",
                    node.input[0:3],
                    [a_float],
                    name=f"{node.name}__dequant_a",
                ),
                helper.make_node(
                    "DequantizeLinear",
                    node.input[3:6],
                    [b_float],
                    name=f"{node.name}__dequant_b",
                ),
                helper.make_node(
                    "Add",
                    [a_float, b_float],
                    [sum_float],
                    name=f"{node.name}__add",
                ),
                helper.make_node(
                    "QuantizeLinear",
                    [sum_float, node.input[6], node.input[7]],
                    list(node.output),
                    name=f"{node.name}__quant",
                ),
            ]
        )
        replaced_by_kind[node.op_type] += 1
        continue

    if node.op_type == "QLinearGlobalAveragePool":
        if len(node.input) != 5 or len(node.output) != 1:
            raise RuntimeError(f"unexpected QLinearGlobalAveragePool signature at {node.name!r}")
        pool_input = f"{node.output[0]}__pool_input"
        pool_output = f"{node.output[0]}__pool_output"
        nodes.extend(
            [
                helper.make_node(
                    "DequantizeLinear",
                    node.input[0:3],
                    [pool_input],
                    name=f"{node.name}__dequant",
                ),
                helper.make_node(
                    "GlobalAveragePool",
                    [pool_input],
                    [pool_output],
                    name=f"{node.name}__pool",
                ),
                helper.make_node(
                    "QuantizeLinear",
                    [pool_output, node.input[3], node.input[4]],
                    list(node.output),
                    name=f"{node.name}__quant",
                ),
            ]
        )
        replaced_by_kind[node.op_type] += 1
        continue

    if node.op_type == "QGemm":
        if len(node.input) != 9 or len(node.output) != 1:
            raise RuntimeError(f"unexpected QGemm signature at {node.name!r}")
        if node.input[1] not in initializers or node.input[4] not in initializers:
            raise RuntimeError(f"QGemm scales must be constant at {node.name!r}")
        a_scale = initializers[node.input[1]]
        b_scale = initializers[node.input[4]]
        bias_scale_name = f"{node.output[0]}__bias_scale"
        bias_zero_point_name = f"{node.output[0]}__bias_zero_point"
        model.graph.initializer.extend(
            [
                numpy_helper.from_array(
                    np.asarray(a_scale * b_scale, dtype=np.float32),
                    bias_scale_name,
                ),
                numpy_helper.from_array(
                    np.asarray(0, dtype=np.int32),
                    bias_zero_point_name,
                ),
            ]
        )
        a_float = f"{node.output[0]}__a_float"
        b_float = f"{node.output[0]}__b_float"
        bias_float = f"{node.output[0]}__bias_float"
        gemm_float = f"{node.output[0]}__gemm_float"
        gemm_attributes = {attribute.name: helper.get_attribute_value(attribute) for attribute in node.attribute}
        nodes.extend(
            [
                helper.make_node(
                    "DequantizeLinear",
                    node.input[0:3],
                    [a_float],
                    name=f"{node.name}__dequant_a",
                ),
                helper.make_node(
                    "DequantizeLinear",
                    node.input[3:6],
                    [b_float],
                    name=f"{node.name}__dequant_b",
                ),
                helper.make_node(
                    "DequantizeLinear",
                    [node.input[6], bias_scale_name, bias_zero_point_name],
                    [bias_float],
                    name=f"{node.name}__dequant_bias",
                ),
                helper.make_node(
                    "Gemm",
                    [a_float, b_float, bias_float],
                    [gemm_float],
                    name=f"{node.name}__gemm",
                    **gemm_attributes,
                ),
                helper.make_node(
                    "QuantizeLinear",
                    [gemm_float, node.input[7], node.input[8]],
                    list(node.output),
                    name=f"{node.name}__quant",
                ),
            ]
        )
        replaced_by_kind[node.op_type] += 1
        continue

    nodes.append(node)

del model.graph.node[:]
model.graph.node.extend(nodes)
model = onnx.shape_inference.infer_shapes(model)
onnx.checker.check_model(model)
onnx.save(model, output)
print(f"wrote {output} with replacements {replaced_by_kind}")
