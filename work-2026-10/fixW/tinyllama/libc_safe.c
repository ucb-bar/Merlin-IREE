#include <stddef.h>
// Supplied newlib strncmp uses unaligned ld; Rocket/Spike strict alignment.
int strncmp(const char* a,const char* b,size_t n) {
 const volatile unsigned char* x=(const volatile unsigned char*)a;
 const volatile unsigned char* y=(const volatile unsigned char*)b;
 while(n--) { unsigned char u=*x++,v=*y++; if(u!=v)return (int)u-(int)v; if(!u)return 0; } return 0;
}
int memcmp(const void* a,const void* b,size_t n) {
 const volatile unsigned char* x=a; const volatile unsigned char* y=b;
 while(n--) { unsigned char u=*x++,v=*y++; if(u!=v)return (int)u-(int)v; } return 0;
}
int strcmp(const char* a,const char* b) {
 const volatile unsigned char* x=(const volatile unsigned char*)a;
 const volatile unsigned char* y=(const volatile unsigned char*)b;
 for(;;) { unsigned char u=*x++,v=*y++; if(u!=v)return (int)u-(int)v; if(!u)return 0; }
}
