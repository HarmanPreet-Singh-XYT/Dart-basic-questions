//String Compression
String input = 'aaabbc';
String compressString(String input){
  var charCount = <String,int>{};
  var list = <dynamic>[];
  for (int x = 0; x < input.length; x++) {
    charCount.update(input[x], (value) => value + 1, ifAbsent: () => 1);
  }
  charCount.forEach((k, v) => list.add('$k$v'));
  return list.join();
}
void main(){
  print(compressString(input));
}