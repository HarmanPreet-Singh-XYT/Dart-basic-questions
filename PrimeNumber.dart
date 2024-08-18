// Prime Number Check
int input = 12;
bool isPrime(int input){
    if(input<2) return false;
    for(int x = 2; x < input; x++){
      if(input % x == 0) return false;
    }
    return true;
}
void main(){
  print(isPrime(input));
}