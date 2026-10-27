#include <stdint.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
static uint64_t calls, bytes;
#ifdef BUFFER_OUTPUT
static char output_buffer[65536];
#endif
ssize_t __real__write(int fd, const void *buf, size_t len);
ssize_t __wrap__write(int fd, const void *buf, size_t len) {
  if (fd == 1) { ++calls; bytes += len; }
  return __real__write(fd, buf, len);
}
static uint64_t cycles(void) { uint64_t n; __asm__ volatile("rdcycle %0":"=r"(n)::"memory"); return n; }
int main(void) {
#ifdef BUFFER_OUTPUT
  if (setvbuf(stdout, output_buffer, _IOFBF, sizeof(output_buffer))) return 3;
#endif
  printf("START\n"); fflush(stdout);
  unsigned flags=(unsigned)stdout->_flags;
  calls=bytes=0; uint64_t start=cycles();
  for (unsigned i=0;i<1000;++i) printf("WORD %08x\n",i*2654435761u);
  fflush(stdout); uint64_t delta=cycles()-start;
  uint64_t count=calls, length=bytes;
  fprintf(stderr,"IO_RESULT flags=%x calls=%lu bytes=%lu dump_cycles=%lu\n",flags,(unsigned long)count,(unsigned long)length,(unsigned long)delta);
  return 0;
}
