// Capitalize words
String input = 'hello world!';

String capitalize(String input){
  var inputSplit = input.split(' ');
  var list = new List<String>.generate(inputSplit.length, (i) => '');
  for(int x = 0; x<inputSplit.length; x++){
    list[x] = inputSplit[x][0].toUpperCase()+inputSplit[x].substring(1,inputSplit[x].length);
  };
  var outputString = list.join(' ');
  return outputString;
  }
void main(){
  print(capitalize(input));
}