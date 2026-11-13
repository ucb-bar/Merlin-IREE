#define MODEL_NAME "smolvla_int8"
#define ENTRY "module.main"
#define NINV 2
#define ATOL 0.001f
#define RTOL 0.001f
#define NIN 11
#define NOUT 1
extern const uint8_t in0_s[], in0_e[];
extern const uint8_t in1_s[], in1_e[];
extern const uint8_t in2_s[], in2_e[];
extern const uint8_t in3_s[], in3_e[];
extern const uint8_t in4_s[], in4_e[];
extern const uint8_t in5_s[], in5_e[];
extern const uint8_t in6_s[], in6_e[];
extern const uint8_t in7_s[], in7_e[];
extern const uint8_t in8_s[], in8_e[];
extern const uint8_t in9_s[], in9_e[];
extern const uint8_t in10_s[], in10_e[];
extern const uint8_t ref0_s[], ref0_e[];
static const min_t INPUTS[] = {{in0_s, in0_e, 4, {1, 3, 512, 512}, IREE_HAL_ELEMENT_TYPE_BFLOAT_16}, {in1_s, in1_e, 4, {1, 3, 512, 512}, IREE_HAL_ELEMENT_TYPE_BFLOAT_16}, {in2_s, in2_e, 4, {1, 3, 512, 512}, IREE_HAL_ELEMENT_TYPE_BFLOAT_16}, {in3_s, in3_e, 1, {1}, IREE_HAL_ELEMENT_TYPE_BOOL_8}, {in4_s, in4_e, 1, {1}, IREE_HAL_ELEMENT_TYPE_BOOL_8}, {in5_s, in5_e, 1, {1}, IREE_HAL_ELEMENT_TYPE_BOOL_8}, {in6_s, in6_e, 2, {1, 48}, IREE_HAL_ELEMENT_TYPE_SINT_64}, {in7_s, in7_e, 2, {1, 48}, IREE_HAL_ELEMENT_TYPE_BOOL_8}, {in8_s, in8_e, 2, {1, 32}, IREE_HAL_ELEMENT_TYPE_FLOAT_32}, {in9_s, in9_e, 3, {1, 50, 32}, IREE_HAL_ELEMENT_TYPE_FLOAT_32}, {in10_s, in10_e, 1, {1}, IREE_HAL_ELEMENT_TYPE_FLOAT_32}};
static const mref_t REFS[] = {{ref0_s, ref0_e}};
