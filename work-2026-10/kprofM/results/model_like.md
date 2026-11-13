# Model-like kernel view (shipped dtypes)

Set A INT8 requant-epilogue (B variant) rows from kprofC/results/kernels.csv for the INT8 kernels, plus Set B FP32 rows for att_qk, att_pv (shipped explicit decode form for decode; prefill batch_matmul) and the FP32 lm_head, exactly the shipped dtype of each kernel. FireSim plain-build cycles; dispatch cycles from the trace build.

|Kernel|Source|Dtype|MACs|Cold|Warm median|min|max|MAC/cycle|Gemmini dispatch cyc|Rocket dispatch cyc|Dispatches|
|---|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|gemm_512_512_512|setA gemm_512_512_512_B|INT8 -> requant epilogue|134,217,728|2,221,137|2,131,555|2,130,486|2,215,313|62.9670|1,910,719|0|1|
|gemm_12544_256_64|setA gemm_12544_256_64_B|INT8 -> requant epilogue|205,520,896|5,183,150|4,402,909|4,340,706|4,790,626|46.6784|3,761,142|0|1|
|gemm_12544_64_256|setA gemm_12544_64_256_B|INT8 -> requant epilogue|205,520,896|12,737,685|9,761,813|9,484,644|11,524,449|21.0536|7,145,555|0|1|
|gemm_3136_512_128|setA gemm_3136_512_128_B|INT8 -> requant epilogue|205,520,896|3,556,804|3,337,786|3,334,841|3,461,788|61.5740|3,005,688|0|1|
|gemm_3136_128_512|setA gemm_3136_128_512_B|INT8 -> requant epilogue|205,520,896|7,027,182|5,807,603|5,799,478|6,521,284|35.3882|4,618,454|0|1|
|gemm_784_256_1024|setA gemm_784_256_1024_B|INT8 -> requant epilogue|205,520,896|4,273,650|4,112,854|4,111,758|4,346,261|49.9704|3,503,144|0|1|
|conv_56_64|setA conv_56_64_B|INT8 -> requant epilogue|462,422,016|227,891,100|226,823,563|226,596,858|226,844,860|2.0387|14,807,509|194,372,583|10|
|conv_28_128|setA conv_28_128_B|INT8 -> requant epilogue|462,422,016|112,435,914|111,344,618|111,265,521|112,075,754|4.1531|9,160,751|96,349,707|10|
|conv_14_256|setA conv_14_256_B|INT8 -> requant epilogue|462,422,016|79,446,001|78,878,171|78,865,195|79,037,223|5.8625|28,284,019|48,166,012|10|
|att_qk_prefill|setB att_qk_prefill_F|FP32 (scalar Rocket)|524,288|4,682,758|4,568,636|4,564,407|4,601,278|0.1148|0|4,501,271|1|
|att_pv_prefill|setB att_pv_prefill_F|FP32 (scalar Rocket)|524,288|5,387,660|5,354,157|5,347,481|5,408,924|0.0979|0|5,231,350|1|
|att_qk_decode|setB att_qk_decode_chain_F|FP32 (scalar Rocket)|131,072|6,640,205|6,322,846|6,307,384|6,340,897|0.0207|0|5,910,896|5|
|att_qk_decode (plain batch_matmul form)|setB att_qk_decode_F|FP32 (scalar Rocket)|131,072|917,530|823,105|812,081|858,258|0.1592|0|762,356|1|
|att_pv_decode|setB att_pv_decode_chain_F|FP32 (scalar Rocket)|131,072|2,156,506|2,032,252|2,031,589|2,040,895|0.0645|0|1,610,066|3|
|att_pv_decode (plain batch_matmul form)|setB att_pv_decode_F|FP32 (scalar Rocket)|131,072|900,574|820,780|810,968|852,380|0.1597|0|761,210|1|
|mm_down|setA mm_down_B|INT8 -> requant epilogue|184,549,376|19,416,319|18,837,512|18,834,162|18,843,731|9.7969|14,990,212|3,614,251|2|
|mm_gu|setA mm_gu_B|INT8 -> requant epilogue|184,549,376|21,416,625|20,808,572|20,804,026|20,813,051|8.8689|10,437,182|9,990,130|2|
|mm_o|setA mm_o_B|INT8 -> requant epilogue|67,108,864|8,400,100|7,565,211|7,562,346|7,624,629|8.8707|3,778,751|3,607,671|2|
|mm_qkv|setA mm_qkv_B|INT8 -> requant epilogue|83,886,080|9,773,176|9,207,654|9,198,723|9,316,347|9.1105|4,457,897|4,552,319|2|
|mm_lm|setB mm_lm_fp32_shipped_F|FP32 (scalar Rocket)|65,536,000|502,812,114|501,379,916|501,369,252|501,442,103|0.1307|0|514,110,917|1|
