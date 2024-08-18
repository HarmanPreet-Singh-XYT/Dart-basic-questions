
// Palindrome checker
String input = 'helletw';
var length = input.length;
bool isPal(input){
  for(int x=0;x<length/2;x++){
    if(input[x]!=input[(length-x)-1]){
      return false;
    };
  };
  return true;
}
void main(){
  bool answer = isPal(input);
  print(answer);
}