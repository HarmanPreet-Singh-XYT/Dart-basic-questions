// count occurrences
List<int> array = [1, 2, 3, 2, 2, 4];
int element = 2;
int count(List<int> array, int element){
  int count = 0;
  array.forEach((each)=>[if(each==element) count++]);
  return count;
}
void main(){
  print(count(array, element));
}