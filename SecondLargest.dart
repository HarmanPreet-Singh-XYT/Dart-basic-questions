// Second Largest number
List<int> array = [10, 20, 4, 5, 20];
int secondLargest(List<int> array){
  int largest = 0;
  int secLargest = 0;
  for(int x = 0;x<array.length;x++){
    if(array[x] > largest) largest=array[x];
    else if(array[x] < largest && array[x] > secLargest) secLargest=array[x];
  }
  return secLargest;
}
void main(){
  print(secondLargest(array));
}