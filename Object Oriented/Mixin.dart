// Mixin
mixin Walker{
  void walk(){
    print('Walking...');
  }
}
class Dog with Walker{

}
var dog = Dog();
void main(){
  dog.walk();
}
