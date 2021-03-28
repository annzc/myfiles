#include <stdio.h>
int main(){
  char str[]="";
  gets(str);
  char char_stored;
  int count;
  for(int i=0;i<=strlen(str);i++){
    char chr=str[i];
    if(chr==char_stored){
      count+=1;
    }else if(chr=="P"){
      char_stored=chr;
    }else if(chr=="C"){
      char_stored=chr;
    }
  }
  printf("count: %i\n",count);
}
