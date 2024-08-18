// FizzBuzz
int starting = 1;
int max = 100;

Object checkFizzBuzz(digit){
  if(digit % 3 == 0 && digit % 5 == 0) return 'FizzBuzz';
  else if(digit % 3 == 0) return 'Fizz';
  else if(digit % 5 == 0) return 'Buzz';
  else return digit;
}
void main(){
  for(int x = starting; x < max; x++) print(checkFizzBuzz(x));
}