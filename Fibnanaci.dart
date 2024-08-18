// Fibonacci Sequence
var array = [];
void Fibonacci(int number, int a, int b){
  if(array.length == number) return;
  else{
    array.add(a);
    Fibonacci(number,b, a+b);
  }
}
void main(){
  Fibonacci(12, 0, 1);
  print(array);
}