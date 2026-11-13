STATUS: DONE WITH ONE FAILED MODEL (2026-10-28 ~15:45 UTC) - ResNet-50 + TinyLlama totals, 16 kernels (Set A int8 + Set B native dtype), in-model rows and calibration measured; SmolVLA runs timed out (rc 124 at 14400 s), no SmolVLA total
NEEDS: (a) SmolVLA total: one rerun on ONE F2 instance (both ELFs in its two slots) with RUN_TIMEOUT raised to ~24 h (host edit, recorded); runtime unknown beyond >4 h. DEFAULT TAKEN: not rerun. Optional ~15-min sizing step first: standalone F2 run of the dominant fp32 vision-attention shape (batch_matmul 12x1024x1024x64) via gen_kernels to set the cap. (b) Optional: pick the ResNet reference recipe (fixW flags = primary here; kprofC precision flags also reported).

# F2 cycle campaign: three models + 16 kernels on FireSim F2 (Gemmini DIM16, int8), 2026-10-28

Hardware for every run: hw_config f2_gemmini_rocket_ddr3llc_60mhz, AGFI agfi-02410ef1a8461b435, FireSim-f2 driver md5 52297743...
(merlin-p1-f2-a/b/c). Compiler: fixW build-numerics iree-compile (sha256 6394f9d7... / lib c3c2aba4...), the b89be5a profile's compiler.
Calibration: the b89be5a kernel ELF re-run here reproduces all 36 cold+warm cycle counts exactly (calib/calib-compare.csv).
Cycles = rdcycle around one iree_vm_invoke (inputs resident; model init outside the window). Provenance: PROVENANCE.md.
F2 instances: all three merlin-p1-f2-a/-b/-c STOPPED (verified with aws ec2 describe-instances after the last run; f2-b by its idle timer, f2-a/-c stopped from garden ~15:35 UTC after data was synced)

## 1. Three models (run in parallel on three F2 instances; models-total-cycles.csv)
| model | cold invoke cycles | warm invoke cycles | instret (cold) | dispatches | Gemmini dispatches | Gemmini dispatch cycles (warm) | Rocket dispatch cycles (warm) | output check | log |
|---|---|---|---|---|---|---|---|---|---|
| ResNet-50 INT8 b1 (fixW recipe; PRIMARY) | 2,088,696,169 | 2,086,032,980 | 866,737,786 | 106 | 54 | 1,653,362,017 | 405,608,061 | out0: errors=0 max_abs=0.2092 argmax=21/21 | runs/r2-resnetfx-plain/uartlog |
| ResNet-50 INT8 b1 (kprofC precision flags) | 3,871,089,221 | 3,868,901,745 | 1,795,404,562 | 106 | 54 | 3,444,468,678 | 393,359,029 | out0: errors=0 max_abs=0.2092 argmax=21/21 | runs/r1-resnet-plain/uartlog |
| TinyLlama-1.1B INT8 seq16 (fixW recipe) | 13,360,733,021 | 13,359,530,387 | 4,750,114,220 | 1457 | 154 | 1,584,921,699 | 11,766,961,189 | out0: errors=0 max_abs=2.28882e-05 argmax=224359/224359 | runs/r1-tiny-plain/uartlog |
| SmolVLA INT8, 1 denoise step (fixW recipe) | not measured | not measured | - | - | - | - | - | - | - |

Notes:
- ResNet: the kprofC precision flags (--iree-opt-numeric-precision-reduction=false --iree-llvmcpu-reassociate-fp-reductions=false
  --iree-llvmcpu-skip-intermediate-roundings=false --iree-input-demote-f64-to-f32=false) make the fused fp32 requant epilogues inside
  Gemmini dispatches much slower (1.85x whole model). The same MLIR without them (fixW ResNet recipe) gives 2,088,696,169 cycles cold,
  = old perfX 2,088,208,536 (+0.02%) and instret 866,737,786 = old Spike 866,737,398. Controlled check, runs r2-resnetfx-*.
- TinyLlama: the fp32 lm_head (left unquantized by the exporter, 16 rows, no KV cache) is ONE Rocket dispatch of ~10.9 G cycles = ~82%
  of the invoke; all 154 int8 linears together are ~1.58 G cycles on Gemmini (~12%).
- Dispatch "Gemmini" = compiled function contains Gemmini RoCC instructions; its interval includes any fused scalar epilogue.

## 2. Kernel tables

### Set A: int8 standalone (i8 x i8 -> i32), 1 cold + 5 warm invokes, rdcycle around iree_vm_invoke
| kernel | cold_cycles | warm_median | warm_min | warm_max | MACs_per_cycle | pct_of_256_peak | placement | check |
|---|---|---|---|---|---|---|---|---|
| gemm 512x512x512 | 4618110 | 4399658 | 4397742 | 4401357 | 30.5064 | 11.9166 | Gemmini | PASS bitwise |
| gemm 12544x256x64 | 16187640 | 14120681 | 14092038 | 14309650 | 14.5546 | 5.6854 | Gemmini | PASS bitwise |
| gemm 12544x64x256 | 61475730 | 62200260 | 62186349 | 62218656 | 3.3042 | 1.2907 | Gemmini | PASS bitwise |
| gemm 3136x512x128 | 8614850 | 7165014 | 7144375 | 7346078 | 28.6839 | 11.2047 | Gemmini | PASS bitwise |
| gemm 3136x128x512 | 29203083 | 29027931 | 29008253 | 29059794 | 7.0801 | 2.7657 | Gemmini | PASS bitwise |
| gemm 784x256x1024 | 14736189 | 12047980 | 11952297 | 12644381 | 17.0585 | 6.6635 | Gemmini | PASS bitwise |
| conv 3x3 56x56 64->64 b4 | 122717764 | 121657778 | 121625042 | 121685498 | 3.801 | 1.4848 | mixed | PASS bitwise |
| conv 3x3 28x28 128->128 b4 | 66318231 | 64686815 | 64668074 | 64753457 | 7.1486 | 2.7924 | mixed | PASS bitwise |
| conv 3x3 14x14 256->256 b4 | 35904982 | 34326234 | 34256102 | 34697711 | 13.4714 | 5.2623 | mixed | PASS bitwise |
| att_pv (32 heads) | 492863 | 422001 | 421728 | 426765 | 1.2424 | 0.4853 | Gemmini | PASS bitwise |
| att_qk (32 heads) | 269181 | 193408 | 192357 | 198542 | 2.7108 | 1.0589 | Gemmini | PASS bitwise |
| mm_down 16x5632x2048 | 14978035 | 14425159 | 14418483 | 14429224 | 12.7936 | 4.9975 | Gemmini | PASS bitwise |
| mm_gu 16x2048x5632 x2 | 18498601 | 17913161 | 17903161 | 17919387 | 20.6049 | 8.0488 | Gemmini | PASS bitwise (runner flag 1: generator expectation bug, see RESULT.md) |
| mm_o 16x2048x2048 | 4024974 | 3190638 | 3184954 | 3232926 | 21.0331 | 8.216 | Gemmini | PASS bitwise |
| mm_qkv 16x2048x(2048+256+256) | 4198279 | 3721169 | 3701006 | 3834064 | 22.5429 | 8.8058 | Gemmini | PASS bitwise |
| mm_lm 1x2048x32000 | 29270266 | 29029171 | 29026247 | 29041529 | 2.2576 | 0.8819 | Gemmini | PASS bitwise |
| att_pv_bmm | 10000563 | 9974684 | 9973633 | 9978012 | 0.0526 | 0.0205 | Rocket | PASS bitwise |
| att_qk_bmm | 7207773 | 7187881 | 7187155 | 7188902 | 0.0729 | 0.0285 | Rocket | PASS bitwise |
| mm_gu | 9303512 | 8854328 | 8852828 | 8868256 | 20.8428 | 8.1417 | Gemmini | PASS bitwise |

### Set B: native dtype as in the compiled models
| kernel | dtype | models | placement | native_case | cold_cycles | warm_median | MACs_per_cycle | pct_of_256_peak | check |
|---|---|---|---|---|---|---|---|---|---|
| gemm 512x512x512 | - | none | - | - |  |  |  |  |  |
| gemm 12544x256x64 | int8 (i8xi8->i32) | ResNet-50 | Gemmini | gemm_12544_256_64 | 16187640 | 14120681 | 14.5546 | 5.6854 | PASS bitwise |
| gemm 12544x64x256 | int8 (i8xi8->i32) | ResNet-50 | Gemmini | gemm_12544_64_256 | 61475730 | 62200260 | 3.3042 | 1.2907 | PASS bitwise |
| gemm 3136x512x128 | int8 (i8xi8->i32) | ResNet-50 | Gemmini | gemm_3136_512_128 | 8614850 | 7165014 | 28.6839 | 11.2047 | PASS bitwise |
| gemm 3136x128x512 | int8 (i8xi8->i32) | ResNet-50 | Gemmini | gemm_3136_128_512 | 29203083 | 29027931 | 7.0801 | 2.7657 | PASS bitwise |
| gemm 784x256x1024 | int8 (i8xi8->i32) | ResNet-50 | Gemmini | gemm_784_256_1024 | 14736189 | 12047980 | 17.0585 | 6.6635 | PASS bitwise |
| conv 3x3 56x56 64->64 b4 | int8 (i8xi8->i32) | ResNet-50 | Rocket im2col + Gemmini matmul | conv_56_64 | 122717764 | 121657778 | 3.801 | 1.4848 | PASS bitwise |
| conv 3x3 28x28 128->128 b4 | int8 (i8xi8->i32) | ResNet-50 | Rocket im2col + Gemmini matmul | conv_28_128 | 66318231 | 64686815 | 7.1486 | 2.7924 | PASS bitwise |
| conv 3x3 14x14 256->256 b4 | int8 (i8xi8->i32) | ResNet-50 | Rocket im2col + Gemmini matmul | conv_14_256 | 35904982 | 34326234 | 13.4714 | 5.2623 | PASS bitwise |
| att_pv (32 heads) | fp32 | TinyLlama | Rocket (scalar) | att_pv_f32_bmm | 5344022 | 5310093 | 0.0987 |  | PASS bitwise |
| att_qk (32 heads) | fp32 | TinyLlama | Rocket (scalar) | att_qk_f32_bmm | 4587011 | 4554061 | 0.1151 |  | PASS bitwise |
| mm_down 16x5632x2048 | int8 (i8xi8->i32) | TinyLlama | Gemmini | mm_down | 14978035 | 14425159 | 12.7936 | 4.9975 | PASS bitwise |
| mm_gu 16x2048x5632 x2 | int8 (i8xi8->i32) | TinyLlama | Gemmini | mm_gu_pair | 18498601 | 17913161 | 20.6049 | 8.0488 | PASS bitwise (runner flag 1: generator expectation bug, see RESULT.md) |
| mm_o 16x2048x2048 | int8 (i8xi8->i32) | TinyLlama | Gemmini | mm_o | 4024974 | 3190638 | 21.0331 | 8.216 | PASS bitwise |
| mm_qkv 16x2048x(2048+256+256) | int8 (i8xi8->i32) | TinyLlama | Gemmini | mm_qkv | 4198279 | 3721169 | 22.5429 | 8.8058 | PASS bitwise |
| mm_lm 1x2048x32000 | fp32 | TinyLlama | Rocket (scalar) | mm_lm_f32 | 491772163 | 490482995 | 0.1336 |  | PASS bitwise |

### Models (whole invoke, rdcycle around iree_vm_invoke)
| app | variant | invoke | cycles | instret | dispatches | gemmini_dispatches | gemmini_dispatch_cycles | rocket_dispatch_cycles | check |
|---|---|---|---|---|---|---|---|---|---|
| resnet | plain | cold | 3871089221 | 1795404562 |  |  |  |  | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnet | plain | warm1 | 3868901745 | 1795404371 |  |  |  |  | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnet | trace | cold | 3870810813 | 1795407318 | 106 | 54 | 3444481092 | 393070611 | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnet | trace | warm1 | 3868623350 | 1795407127 | 106 | 54 | 3444468678 | 393359029 | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnetfx | plain | cold | 2088696169 | 866737786 |  |  |  |  | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnetfx | plain | warm1 | 2086032980 | 866737280 |  |  |  |  | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnetfx | trace | cold | 2088074157 | 866740542 | 106 | 54 | 1653339678 | 405711564 | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| resnetfx | trace | warm1 | 2085446507 | 866740036 | 106 | 54 | 1653362017 | 405608061 | out0: errors=0 max_abs=0.2092 argmax=21/21 |
| tiny | plain | cold | 13360733021 | 4750114220 |  |  |  |  | out0: errors=0 max_abs=2.28882e-05 argmax=224359/224359 |
| tiny | plain | warm1 | 13359530387 | 4750108572 |  |  |  |  | out0: errors=0 max_abs=2.28882e-05 argmax=224359/224359 |
| tiny | trace | cold | 13360253659 | 4750152102 | 1457 | 154 | 1585067497 | 11766912684 | out0: errors=0 max_abs=2.28882e-05 argmax=224359/224359 |
| tiny | trace | warm1 | 13359141150 | 4750146454 | 1457 | 154 | 1584921699 | 11766961189 | out0: errors=0 max_abs=2.28882e-05 argmax=224359/224359 |

### Kernels as used inside the models (trace build, warm invoke)
| kernel | model | dispatch_shapes | dtypes | placement | calls | cycles_per_call | main_dispatch_min | main_dispatch_max | cycles_total | MACs_per_cycle | pct_of_256_peak | pct_of_model_invoke |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| gemm_12544_256_64 | resnet | matmul_3136x64x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 2 | 42321872.5 | 42224239 | 42419506 | 84643745 | 1.214 | 0.4742 | 2.188 |
| gemm_12544_64_256 | resnet | matmul_3136x256x64_i8xi8xi32 | i8xi8xi32 | Gemmini | 4 | 235182127.2 | 2828133 | 382503807 | 940728509 | 0.2185 | 0.0853 | 24.3169 |
| gemm_3136_512_128 | resnet | matmul_784x128x512_i8xi8xi32 | i8xi8xi32 | Gemmini | 3 | 21541228.0 | 21512146 | 21591331 | 64623684 | 2.3852 | 0.9317 | 1.6705 |
| gemm_3136_128_512 | resnet | matmul_784x512x128_i8xi8xi32 | i8xi8xi32 | Gemmini | 4 | 104553720.2 | 1595974 | 139148634 | 418214881 | 0.4914 | 0.192 | 10.8104 |
| gemm_784_256_1024 | resnet | matmul_196x1024x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 6 | 60140886.7 | 2937547 | 71868975 | 360845320 | 0.8543 | 0.3337 | 9.3275 |
| conv_56_64 | resnet | generic_56x56x3x3x64_i8 + matmul_3136x64x576_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 3 | 64268412.7 | 43517404 | 43665711 | 192805238 | 1.7988 | 0.7027 | 4.9838 |
| conv_28_128 | resnet | generic_28x28x3x3x128_i8 + matmul_784x128x1152_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 4 | 33337352.0 | 22385241 | 22461492 | 133349408 | 3.4677 | 1.3546 | 3.4469 |
| conv_14_256 | resnet | generic_14x14x3x3x256_i8 + matmul_196x256x2304_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 6 | 21999238.2 | 17165357 | 17347412 | 131995429 | 5.255 | 2.0527 | 3.4119 |
| int8 contractions (all) | resnet | matmul_12544x64x147_i8xi8xi32 + matmul_196x1024x256_i8xi8xi32 + matmul_196x1024x512_i8xi8xi32 + matmul_196x256x1024_i8xi8xi32 + matmul_196x256x2304_i8xi8xi32 + matmul_196x512x1024_i8xi8xi32 + matmul_1x1000x2048_i8xi8xi32 + matmul_3136x128x256_i8xi8xi32 + matmul_3136x256x64_i8xi8xi32 + matmul_3136x64x256_i8xi8xi32 + matmul_3136x64x576_i8xi8xi32 + matmul_3136x64x64_i8xi8xi32 + matmul_49x2048x1024_i8xi8xi32 + matmul_49x2048x512_i8xi8xi32 + matmul_49x512x2048_i8xi8xi32 + matmul_49x512x4608_i8xi8xi32 + matmul_784x128x1152_i8xi8xi32 + matmul_784x128x512_i8xi8xi32 + matmul_784x256x512_i8xi8xi32 + matmul_784x512x128_i8xi8xi32 + matmul_784x512x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 54 | 63786457.0 | 1128755 | 382503807 | 3444468678 | 1.1872 | 0.4637 | 89.036 |
| gemm_12544_256_64 | resnetfx | matmul_3136x64x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 2 | 1224387.0 | 1215390 | 1233384 | 2448774 | 41.964 | 16.3922 | 0.1174 |
| gemm_12544_64_256 | resnetfx | matmul_3136x256x64_i8xi8xi32 | i8xi8xi32 | Gemmini | 4 | 123218857.2 | 2720488 | 163961872 | 492875429 | 0.417 | 0.1629 | 23.634 |
| gemm_3136_512_128 | resnetfx | matmul_784x128x512_i8xi8xi32 | i8xi8xi32 | Gemmini | 3 | 902920.3 | 900175 | 906963 | 2708761 | 56.9045 | 22.2283 | 0.1299 |
| gemm_3136_128_512 | resnetfx | matmul_784x512x128_i8xi8xi32 | i8xi8xi32 | Gemmini | 4 | 61831815.8 | 1566015 | 82005674 | 247327263 | 0.831 | 0.3246 | 11.8597 |
| gemm_784_256_1024 | resnetfx | matmul_196x1024x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 6 | 36370312.8 | 2955677 | 43337285 | 218221877 | 1.4127 | 0.5518 | 10.464 |
| conv_56_64 | resnetfx | generic_56x56x3x3x64_i8 + matmul_3136x64x576_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 3 | 22484338.3 | 2116776 | 2228038 | 67453015 | 5.1416 | 2.0084 | 3.2345 |
| conv_28_128 | resnetfx | generic_28x28x3x3x128_i8 + matmul_784x128x1152_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 4 | 12058503.0 | 1754346 | 1775031 | 48234012 | 9.5871 | 3.7449 | 2.3129 |
| conv_14_256 | resnetfx | generic_14x14x3x3x256_i8 + matmul_196x256x2304_i8xi8xi32 | i8/i8xi8xi32 | Gemmini+Rocket | 6 | 11956380.7 | 6866274 | 6944515 | 71738284 | 9.6689 | 3.7769 | 3.4399 |
| int8 contractions (all) | resnetfx | matmul_12544x64x147_i8xi8xi32 + matmul_196x1024x256_i8xi8xi32 + matmul_196x1024x512_i8xi8xi32 + matmul_196x256x1024_i8xi8xi32 + matmul_196x256x2304_i8xi8xi32 + matmul_196x512x1024_i8xi8xi32 + matmul_1x1000x2048_i8xi8xi32 + matmul_3136x128x256_i8xi8xi32 + matmul_3136x256x64_i8xi8xi32 + matmul_3136x64x256_i8xi8xi32 + matmul_3136x64x576_i8xi8xi32 + matmul_3136x64x64_i8xi8xi32 + matmul_49x2048x1024_i8xi8xi32 + matmul_49x2048x512_i8xi8xi32 + matmul_49x512x2048_i8xi8xi32 + matmul_49x512x4608_i8xi8xi32 + matmul_784x128x1152_i8xi8xi32 + matmul_784x128x512_i8xi8xi32 + matmul_784x256x512_i8xi8xi32 + matmul_784x512x128_i8xi8xi32 + matmul_784x512x256_i8xi8xi32 | i8xi8xi32 | Gemmini | 54 | 30617815.1 | 751553 | 163961872 | 1653362017 | 2.4733 | 0.9661 | 79.281 |
| mm_down | tiny | matmul_16x2048x5632_i8xi8xi32 | i8xi8xi32 | Gemmini | 22 | 15839695.8 | 15820707 | 15878674 | 348473307 | 11.6511 | 4.5512 | 2.6085 |
| mm_gu_pair | tiny | matmul_16x5632x2048_i8xi8xi32 | i8xi8xi32 | Gemmini | 22 | 46621084.9 | 8478169 | 38140179 | 1025663867 | 7.917 | 3.0926 | 7.6776 |
| mm_o | tiny | matmul_16x2048x2048_i8xi8xi32 | i8xi8xi32 | Gemmini | 22 | 5171527.6 | 5129552 | 5210214 | 113773608 | 12.9766 | 5.069 | 0.8517 |
| mm_qkv | tiny | matmul_16x2048x2048_i8xi8xi32 + matmul_16x256x2048_i8xi8xi32 | i8xi8xi32 | Gemmini | 22 | 4409587.1 | 294438 | 4156210 | 97010917 | 19.0236 | 7.4311 | 0.7262 |
| att_qk | tiny | batch_matmul_32x16x16x64_f32 | f32 | Rocket | 22 | 4779703.5 | 4772174 | 4830828 | 105153478 | 0.1097 | 0.0428 | 0.7871 |
| att_pv | tiny | batch_matmul_32x16x64x16_f32 | f32 | Rocket | 22 | 5213275.2 | 5210970 | 5217734 | 114692055 | 0.1006 | 0.0393 | 0.8585 |
| mm_lm | tiny | batch_matmul_1x16x32000x2048_f32 | f32 | Rocket | 1 | 10933754828.0 | 10933754828 | 10933754828 | 10933754828 | 0.0959 | 0.0375 | 81.8447 |
| int8 linears (all) | tiny | matmul_16x2048x2048_i8xi8xi32 + matmul_16x2048x5632_i8xi8xi32 + matmul_16x256x2048_i8xi8xi32 + matmul_16x5632x2048_i8xi8xi32 | i8xi8xi32 | Gemmini | 154 | 10291699.3 | 294438 | 38140179 | 1584921699 | 9.781 | 3.8207 | 11.8639 |

## Decisions (defaults taken, Loren asleep)
1. Run path: b89be5a used fpga-run-elf -> firesim-manager + S3 upload (both forbidden for this task). Using the f2run stack already installed on merlin-p1-f2-{a,b,c}
   (/opt/f2run, FireSim-f2 driver, f2-exec slot locking). Probe of f2-a: AGFI agfi-02410ef1a8461b435 = f2_gemmini_rocket_ddr3llc_60mhz
   (same image as the b89be5a profile), driver bundle FRFCFS16GBQuadRankLLC4MB_BaseF2Config, 2 slots, RUN_TIMEOUT 14400 s. ELFs go compute-1 -> F2 over the VPC with ssh (no S3).
2. Models: the 16 kernel shapes are the kprofC/kprofM kernels of the IREE/Gemmini campaign, whose models are ResNet-50 INT8 (ONNX QDQ),
   TinyLlama-1.1B INT8 (torchao dyn-act/int8-weight, batch 1 seq 16, no KV cache) and SmolVLA INT8 (one denoise step). The Merlin SY_model_* capsules
   are compiled by Merlin's own whole_model_build (not the IREE/Gemmini backend), SY_model_tiny_llama is seq 8 (not 16) and SY_model_resnet50 is an
   f32 interface (int8 only in the classifier). => use the IREE-flow models (perfX/fixW recipe), re-exported tonight on compute-1 (originals live on iree-wh, not ours).
3. Compiler: exact fixW build-numerics iree-compile (same binary as the b89be5a profile; copied from garden), kprofC flag set (DIM16, 2048 bank rows, 512 acc rows, LOOP_WS, RV64GC, img2col preprocessing).
   Runtime: Merlin-IREE snapshot iree_bar runtime (bundle iree-latest), bare-metal local-sync, prebuilt clang-23, newlib from phase1-prep riscv-tools.
4. Batch: both ResNet-50 models in this flow are batch 1, so the b4 kernel shapes do not occur in-model; in-model rows use the shapes as they occur (b1) and say so.
5. Kernel conv: the direct linalg.conv_2d_nhwc_hwcf(_q) i8xi8->i32 named op fails in iree-global-opt-convert-conv2d-to-img2col
   ("'arith.addi' op requires the same type for all operands and results", addi(i8,i32)); kernels use explicit pad + im2col gather + i8 matmul (what that pass emits).
6b. b/c host edit: merlin-p1-f2-b/-c had the old 1 GiB-cap f2-exec and RUN_TIMEOUT 1800; replaced with f2-a's f2-exec (md5 7a7a6b45..., = tooling/merlin-p1/f2host/f2-exec) and RUN_TIMEOUT 14400 (backups f2-exec.pre-8gib, f2run.conf.pre-timeout on each host), so the 1.5 GB TinyLlama ELF can run there.
6. Kernel variant: Set A = raw i8 x i8 -> i32 (the profile's "A" variant). The requant-epilogue "B" variant of the old profile is not re-run.
7. Model compile recipes follow fixW per model (ResNet: no precision flags; TinyLlama/SmolVLA: fixW numerics flags incl. the precision flags and --torch-pytorch-cpu-numerics with torch 2.10.0 libtorch_cpu.so). Kernels use the kprofC flag set (no fp epilogues, so the flags do not matter; calibration exact).
8. Model invokes: 1 cold + 1 warm per ELF; plain build for totals, PERFX trace build for per-dispatch intervals (trace overhead on totals <0.03%).
9. Attention in Set A: per-head rank-2 matmuls (kprofC form, Gemmini) are the primary rows; the linalg.batch_matmul int8 form compiles to Rocket scalar code and is listed as an extra.
10. kernel mm_gu_pair: runner CHECK flag 1 came from a closure bug in gen_kernels.py's expected checksum; fixed generator (verify/cases.fixed.json) equals the device checksums bitwise; MLIR/inputs unchanged.


## ResNet controlled check (DONE, 11:30)
r2-resnetfx-*: same resnet50.q.int8.mlir compiled with the fixW ResNet flag set (no kprofC precision flags) -> cold invoke 2,088,696,169 cycles
(plain) / 2,088,074,157 (trace), instret 866,737,786 (plain) = old perfX FireSim 2,088,208,536 (+0.02%) and old Spike 866,737,398 instructions.
=> the 1.85x was ENTIRELY the four precision flags (they make the fused fp32 requant epilogues inside Gemmini dispatches exact-rounding and much
slower). Primary ResNet number = fixW recipe (resnetfx); the kprofC-flag build is kept as a second variant. Both pass the output gate (top-1 21).
TinyLlama/SmolVLA follow their fixW recipes, which DO pass those flags (fixW compile_numerics_model.sh).


## SmolVLA outcome (FAILED: timeout, recorded)
- r1-smol-plain (f2-c, slot 1, ELF sha256 3230671075798be3...) and r1-smol-trace (f2-a, slot 0, ELF 51a8d79de44c38e2...), both 11:28 -> 15:29 UTC,
  rc 124: `f2-exec: wall timeout 14400s on slot N; reflashing it` / `f2-exec: slot N rc 124` (runs/r1-smol-*/driver.err).
- Model context load completed (load_cycles 5,265,698,402 plain / 5,265,934,231 trace); the timed invoke 0 never completed, so NO SmolVLA cycle count
  was measured. The driver was killed, so there is no 'Target Cycles Emulated' line. Rough lower bound (ESTIMATE ONLY, not in any cycles column):
  14,400 s wall x the 48.9-57 MHz effective rates of tonight's other runs => the invoke exceeds roughly 0.65-0.8 T target cycles.
- Root cause (from the compiled program, apps/smol/dispatch-classes.json): only the 443 int8 linear matmuls run on Gemmini; ALL attention stays fp32 on
  Rocket scalar code (288 x batch_matmul_12x256x512x64_f32 in the vision tower = 36 SDPA x tiles, plus 23 VLM/expert batch_matmuls), and the patch conv is fp32.
  Set B measures fp32 batch_matmul at ~0.1 MAC/cycle on Rocket; vision attention alone is ~58 G MACs. My 3.1-3.7 h estimate was too low.
- Not rerun (default; see NEEDS). ELFs remain on compute-1: build-plain/smol.elf, build-trace/smol.elf; vmfb dcd6273ae215fd49...

## Files
- kernels-A-int8.csv (Set A, the 16 kernels int8 + extra forms), kernels-B-native-dtype.csv (Set B), kernels-all-cases.csv (every case incl. trace split),
  models-total-cycles.csv, kernels-in-model.csv (the 16 kernels as the models run them, + 'all int8 linears' rows; kernels-in-model-int8.csv is an identical copy under the originally requested name - it also holds the fp32 rows, e.g. TinyLlama attention/lm_head),
  models-contraction-shapes.csv (every contraction dispatch shape in each model), calib/calib-compare.csv, verify/cases.fixed.json.
- runs/<run>/ raw uartlog, driver.err (FireSim totals), elf.sha256, f2run.conf, fpga-before.txt, start/end/rc. RESULT.progress.md = running log.
- Sources: src/ (gen_kernels.py, runner_kernels.c, runner_model.c, gen_app.py, compile_rv.sh, build_rt.sh, f2submit.sh, collect.py, make_tables.py).
