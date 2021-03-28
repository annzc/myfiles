//var str = 'PCPCPCPCPCPCPPC'
const readline = require('readline-sync');
var str = readline.question("input: ");

function hurufBergantian(string) {
  let count = 0;
  let char_stored = '';
  for(let i=0;i<=string.length;i++) {
    char = string.charAt(i);
    if(char == char_stored) count+=1;
    else if(char == 'P') char_stored = char;
    else if(char == 'C') char_stored = char;
  }
  return count;
}

console.log('output:', hurufBergantian(str));

