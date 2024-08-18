String input = 'Hello World!';

String reverseString(String input){
  return input.split('').reversed.join('');
}

void main(){
  print(reverseString(input));
}