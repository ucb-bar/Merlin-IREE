// Supplied newlib strncmp uses unaligned ld. Scalar byte implementation for
// RV64GC targets which trap misaligned accesses. No change to model arithmetic.
#include <stddef.h>
int strncmp(const char *a, const char *b, size_t n) {
  const volatile unsigned char *x=(const volatile unsigned char *)a;
  const volatile unsigned char *y=(const volatile unsigned char *)b;
  while(n--) { unsigned char u=*x++,v=*y++; if(u!=v) return (int)u-(int)v; if(!u) return 0; }
  return 0;
}
int memcmp(const void *a, const void *b, size_t n) {
  const volatile unsigned char *x=a,*y=b;
  while(n--) { unsigned char u=*x++,v=*y++; if(u!=v) return (int)u-(int)v; }
  return 0;
}
int strcmp(const char *a, const char *b) {
  const volatile unsigned char *x=(const volatile unsigned char *)a,*y=(const volatile unsigned char *)b;
  for(;;) { unsigned char u=*x++,v=*y++; if(u!=v) return (int)u-(int)v; if(!u) return 0; }
}
