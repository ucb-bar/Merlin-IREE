#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
int main(){uint16_t *im=malloc(3*512*512*2);float *w=malloc(4*1024*1024);for(int i=0;i<3*512*512;i++)im[i]=0x3e00+(i*37%768);for(int i=0;i<1024*1024;i++)w[i]=(float)((i*13%257)-128)/128;
int ids[]={0,17,1023,24575};for(int j=0;j<4;j++)for(int q=0;q<32;q++){int p=ids[j]*32+q,c=p%768,patch=p/768;float sum=0;for(int k=0;k<768;k++){int r=k/48,x=(k%48)/3,ch=k%3;union{uint32_t u;float f;}v={(uint32_t)im[ch*512*512+((patch/32)*16+r)*512+(patch%32)*16+x]<<16};sum=fmaf(v.f,w[(1403392+c*3072+r*64+x*4+ch*1024)/4],sum);}sum=sum+w[(1243840+c*4)/4];union{float f;uint32_t u;}v={(float)((p*7%31)-15)/32+sum};printf("WORD %08x\n",v.u);}return 0;}
