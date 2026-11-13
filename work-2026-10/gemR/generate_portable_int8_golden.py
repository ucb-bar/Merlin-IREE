#!/usr/bin/env python3
"""Generate a deterministic exact-accumulation INT8 reference with ONNX Runtime.

The input model must express quantized convolutions with standard ONNX
ConvInteger plus explicit bias/requantization operations. The script evaluates
the model with ORT graph optimization both enabled and disabled, requires
bit-for-bit agreement, and writes the common float32 result as raw bytes.
"""

import argparse
import hashlib
from pathlib import Path

import numpy as np
import onnxruntime as ort


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", type=Path, required=True)
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--input-shape",
        type=int,
        nargs="+",
        default=(1, 3, 224, 224),
    )
    return parser.parse_args()


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def evaluate(
    model: Path,
    input_value: np.ndarray,
    optimization: ort.GraphOptimizationLevel,
) -> np.ndarray:
    options = ort.SessionOptions()
    options.intra_op_num_threads = 5
    options.inter_op_num_threads = 1
    options.graph_optimization_level = optimization
    options.log_severity_level = 3
    session = ort.InferenceSession(
        str(model),
        options,
        providers=["CPUExecutionProvider"],
    )
    inputs = session.get_inputs()
    outputs = session.get_outputs()
    if len(inputs) != 1 or len(outputs) != 1:
        raise RuntimeError(f"expected one input and one output, got {len(inputs)} and {len(outputs)}")
    result = session.run([outputs[0].name], {inputs[0].name: input_value})[0]
    if result.dtype != np.float32:
        raise RuntimeError(f"expected float32 output, got {result.dtype}")
    return np.ascontiguousarray(result)


def main() -> None:
    args = parse_args()
    input_value = np.fromfile(args.input, dtype=np.float32)
    expected_elements = int(np.prod(args.input_shape))
    if input_value.size != expected_elements:
        raise RuntimeError(f"input has {input_value.size} elements, expected {expected_elements}")
    input_value = input_value.reshape(args.input_shape)

    enabled = evaluate(
        args.model,
        input_value,
        ort.GraphOptimizationLevel.ORT_ENABLE_ALL,
    )
    disabled = evaluate(
        args.model,
        input_value,
        ort.GraphOptimizationLevel.ORT_DISABLE_ALL,
    )
    if not np.array_equal(enabled, disabled):
        difference = np.abs(enabled - disabled)
        raise RuntimeError(
            "ORT optimization levels disagree: " f"unequal={np.count_nonzero(difference)} max_abs={difference.max()}"
        )

    args.output.parent.mkdir(parents=True, exist_ok=True)
    enabled.tofile(args.output)
    print(f"model_sha256={sha256_file(args.model)}")
    print(f"input_sha256={sha256_file(args.input)}")
    print(f"output_sha256={sha256_file(args.output)}")
    print(f"output_shape={enabled.shape} output_dtype={enabled.dtype}")
    print(f"top1={int(np.argmax(enabled))} optimization_levels_bit_exact=true")


if __name__ == "__main__":
    main()
