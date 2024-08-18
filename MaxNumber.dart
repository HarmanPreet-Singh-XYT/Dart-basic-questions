// Max number
Object array = [1,7,3,9,4];
int findMax(var array){
  int output = 0;
  for(int x = 0; x<array.length;x++){
    if(array[x]>output) output=array[x];
  }
  return output;
}
void main(){
  print(findMax(array));
}