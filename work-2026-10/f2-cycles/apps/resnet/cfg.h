#define MODEL_NAME "resnet50_int8"
#define ENTRY "module.main_graph"
#define NINV 2
#define ATOL 0.8f
#define RTOL 0.1f
#define NIN 1
#define NOUT 1
extern const uint8_t in0_s[], in0_e[];
extern const uint8_t ref0_s[], ref0_e[];
static const min_t INPUTS[] = {{in0_s, in0_e, 4, {1, 3, 224, 224}, IREE_HAL_ELEMENT_TYPE_FLOAT_32}};
static const mref_t REFS[] = {{ref0_s, ref0_e}};
