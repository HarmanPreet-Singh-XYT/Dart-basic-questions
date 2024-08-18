// Sum of digits
int digit = 123;
int sumDigits(int input){
  int total=0;
  String SInput = input.toString();
  List<String> InputSplit = SInput.split('');
  List<int> IntInput = InputSplit.map((each)=>int.parse(each)).toList();
  IntInput.forEach((each)=>total+=each);
  return total;
}
void main(){
  print(sumDigits(digit));
}