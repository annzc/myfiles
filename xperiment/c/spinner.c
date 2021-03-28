#include <stdio.h>
#include <stdlib.h>

int main()
{
  int i;
  char a[];
  _Bool true;
  while (true) {
    for (i=1; i<5; i++) {
      system("sleep 0.1");
      if (i == 1) {
        a = "/";
      } else if (i == 2) {
        a = "-";
      } else if (i == 3) {
        a = "\\";
      }
      printf("installing... %c", a);
    }
  }
  return 0;
}
