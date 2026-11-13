from pathlib import Path
import onnxruntime as ort
p=Path(__file__).resolve().parent
s=ort.SessionOptions();s.graph_optimization_level=ort.GraphOptimizationLevel.ORT_ENABLE_EXTENDED;s.intra_op_num_threads=5;s.inter_op_num_threads=1;s.optimized_model_filepath=str(p/'resnet50.q.int8.ort_optimized.onnx')
ort.InferenceSession('/home/loren/work/runs/resnet50/artifacts/resnet50.q.int8.onnx',s,providers=['CPUExecutionProvider'])
