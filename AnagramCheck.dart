// Anagram
String input1 = 'listen';
String input2 = 'silent';
bool isAnagram(String input1, String input2){
  if(input1.length != input2.length) return false;
  var input1Split = input1.split('');
  var input2Split = input2.split('');
  for(int x =0;x < input1Split.length;x++){
    for(int y=0;y < input2Split.length;y++){
      if(input1Split[x]==input2Split[y]){
        input2Split.removeAt(y);
      }
    }
  };
  if(input2Split.length==0) return true;
  else return false;
}
void main(){
  print(isAnagram(input1, input2));
}