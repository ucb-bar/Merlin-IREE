#define MODEL_NAME "tinyllama_int8"
#define ENTRY "module.main"
#define NINV 2
#define ATOL 0.001f
#define RTOL 0.001f
#define NIN 1
#define NOUT 1
extern const uint8_t in0_s[], in0_e[];
extern const uint8_t ref0_s[], ref0_e[];
static const min_t INPUTS[] = {{in0_s, in0_e, 2, {1, 16}, IREE_HAL_ELEMENT_TYPE_SINT_64}};
static const mref_t REFS[] = {{ref0_s, ref0_e}};
