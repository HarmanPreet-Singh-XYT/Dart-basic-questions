//Missing number
List<int> array = [1,2,4,5];
int findMissing(List<int> array){
  int output = array[0];
  for(int x=0;x<array.length;x++){
    if(array[x]!=output) return output;
    output++;
  }
  return output;
}
void main(){
  print(findMissing(array));
}