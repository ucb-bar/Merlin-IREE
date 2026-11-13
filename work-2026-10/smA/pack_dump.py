import re,sys
from pathlib import Path
p=Path(sys.argv[1]);s=p.read_text()
helper='''static void emit_words(const uint32_t* words,int count) {
 static char buffer[65536]; const char* hex="0123456789abcdef"; size_t used=0;
 for(int j=0;j<count;++j) {
  uint32_t w=words[j];
  for(int shift=28;shift>=0;shift-=4) buffer[used++]=hex[(w>>shift)&15];
  if(j%32==31)buffer[used++]='\\n';
  if(used>sizeof(buffer)-16){fwrite(buffer,1,used,stdout);used=0;}
 }
 if(used)fwrite(buffer,1,used,stdout);putchar('\\n');
}
'''
pat=r'for\(int j=0;j<(\d+);\+\+j\)\{printf\("%08x",result\[j\]\);if\(j%32==31\)putchar\(\'\\n\'\);\}putchar\(\'\\n\'\);'
s,n=re.subn(pat,lambda m:'emit_words(result,'+m[1]+');',s)
if n:
 s=s.replace('iree_status_t Run(void) {',helper+'\niree_status_t Run(void) {').replace('int main(void) {','int main(void) {\n  setvbuf(stdout,NULL,_IOFBF,65536);')
 p.write_text(s)
print('packed dump output loops:',n)
