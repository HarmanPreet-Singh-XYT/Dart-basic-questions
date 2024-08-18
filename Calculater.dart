var input1 = 5;
var input2 = 3;
var inputFunc = 'divide';

int add(a,b){
  return (a+b);
}
int subtract(a,b){
  return (a-b);
}
int multiply(a,b){
  return (a*b);
}
double divide(a,b){
  return (a/b);
}
num answer = 0;
void main(){
  if(inputFunc=='subtract'){
    answer = subtract(input1,input2);
  }else if(inputFunc=='add'){
    answer = add(input1,input2);
  }else if(inputFunc=='multiply'){
    answer = multiply(input1, input2);
  }else{
    answer = divide(input1, input2);
  };
  print(answer);
}