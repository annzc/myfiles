#include <stdio.h>
#include <stdlib.h>
#include "aritmatika.h"

int main(int a, char *b[])
{
  if(a==3)
  {
    int x=atoi(b[1]);
    int y=atoi(b[2]);
    tambah(x,y);
    kurang(x,y);
    kali(x,y);
    bagi(x,y);
  } else
  {
    printf("\033[91mUsage:\033[0m ./all_in_one [angka1] [angka2]\n");
  }
  return 0;
}
