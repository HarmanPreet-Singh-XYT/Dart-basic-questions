// Duplicate
List<int> array = [1, 2, 2, 3, 4, 4, 5];
// Object removeDuplicate(List<int> array){
//   int? lastDigit;
//   var list = array.map((each)=>[if(each!=lastDigit){lastDigit=each}]);
//   return list;
// }
List<int> removeDuplicate(List<int> array){
  List<int> output = [];
  output.add(array[0]);
  for(int x=0;x<array.length-1;x++){
    if(array[x]!=array[x+1]) output.add(array[x+1]);
    else continue;
  };
  return output;
}
void main(){
  print(removeDuplicate(array));
}