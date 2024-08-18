// Factorial Calculation
num number = 8;
num calculate(num){
  var tempNumber = 1;
  var result = 0;
  for(int x = 1;x<num+1;x++){
    tempNumber = x*tempNumber;
    result = tempNumber;
  };
  return result;
}
void main(){
  print('Result = ${calculate(number)}');
}