#include <stdint.h>
#include <stdio.h>
#define M 16
#define N 128
#define K 128
static float a[M*K], b[K*N], c[M*N];
static inline uint64_t rdcycle(void){uint64_t x; asm volatile("rdcycle %0":"=r"(x)); return x;}
__attribute__((noinline)) static void kernel(void) {
 for(int i=0;i<M;i++) for(int j=0;j<N;j+=4) {
  float c0=0,c1=0,c2=0,c3=0; float *pa=&a[i*K]; float *pb=&b[j];
  for(int k=0;k<K;k+=4) {
#pragma GCC unroll 4
   for(int u=0;u<4;u++) { float x=pa[u]; c0=__builtin_fmaf(x,pb[u*N+0],c0); c1=__builtin_fmaf(x,pb[u*N+1],c1); c2=__builtin_fmaf(x,pb[u*N+2],c2); c3=__builtin_fmaf(x,pb[u*N+3],c3); }
   pa+=4; pb+=4*N;
  }
  c[i*N+j+0]=c0;c[i*N+j+1]=c1;c[i*N+j+2]=c2;c[i*N+j+3]=c3;
 }
}
int main(void){for(int i=0;i<M*K;i++)a[i]=(float)((i*17)%31-15)/31.0f;for(int i=0;i<K*N;i++)b[i]=(float)((i*13)%37-18)/37.0f;uint64_t t=rdcycle();kernel();uint64_t cy=rdcycle()-t;uint64_t h=1469598103934665603ULL;for(int i=0;i<M*N;i++){union{float f;uint32_t u;}x={c[i]};h=(h^x.u)*1099511628211ULL;}printf("IDEAL cycles=%lu macs=%u instr_per_mac=%.9f hash=%016lx\\n",(unsigned long)cy,M*N*K,(double)cy/(M*N*K),(unsigned long)h);return 0;}
