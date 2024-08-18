// Average
var array = [10,20,30,40,50];
num average(var array){
  num total = 0;
  for (var each in array) {
    total += each;
  };
  num output = total/array.length;
  return output;
}
void main(){
  print(average(array));
}