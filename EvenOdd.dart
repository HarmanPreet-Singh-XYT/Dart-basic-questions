// Even or ODD
bool isEven(number){
  if(number % 2 == 0) return true;
  else return false;
}
var number = 4;
void main(){
    var output = isEven(number);
    print('is Even or not = $output');
}