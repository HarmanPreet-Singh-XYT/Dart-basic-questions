// Simple Guessing Game
import 'dart:math';
int input = 1;

bool gussNumber(int number){
  var ranNum = Random();
  if(number==ranNum.nextInt(11)) return true;
  else return false;
}
void main(){
  bool result = gussNumber(input);
  if(result) print('Correct!');
  else print('Try again!');
}