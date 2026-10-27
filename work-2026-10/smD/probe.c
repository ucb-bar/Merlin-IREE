#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
extern int probe_kernel(void*,void*,void*);
static inline uint64_t inst(void){uint64_t v;asm volatile("rdinstret %0":"=r"(v)::"memory");return v;}
int main(){
 uint16_t *image=malloc(3*512*512*2);float *weights=calloc(4*1024*1024,1),*res=malloc(786432*4),*out=calloc(786432,4);
 for(int i=0;i<3*512*512;i++)image[i]=0x3e00+(i*37%768);
 for(int i=0;i<1024*1024;i++)weights[i]=(float)((i*13%257)-128)/128;
 for(int i=0;i<786432;i++)res[i]=(float)((i*7%31)-15)/32;
 void *bindings[]={image,weights,res,out};struct{uint64_t pad[4];void*bindings;}state={{0},bindings};
 uint32_t ids[]={0,17,1023,24575};uint64_t total=0;
 for(int j=0;j<4;j++){uint32_t wg[8]={ids[j]};uint64_t t=inst();probe_kernel(0,&state,wg);total+=inst()-t;
 for(int i=0;i<32;i++){union{float f;uint32_t u;}v={out[ids[j]*32+i]};printf("WORD %08x\n",v.u);}}
 printf("INST %lu\n",total);return 0;
}
