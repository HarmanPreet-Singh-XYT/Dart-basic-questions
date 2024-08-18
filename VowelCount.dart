// Vowel Count
var vowels = ['a','e','i','o','u'];
String input = 'Hello world!';
int countVowels(String input){
  int count = 0;
  for(int x = 0; x<input.length;x++){
    for(int y = 0;y<vowels.length; y++){
      if(vowels[y]==input[x].toLowerCase()) count++;
    };
  };
  return count;
}

void main(){
  print(countVowels(input));
}