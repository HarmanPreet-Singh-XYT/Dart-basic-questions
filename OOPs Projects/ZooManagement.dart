abstract class Animal{
  void eat(){
    print('Eating...');
  }
  void sound(){
    print('Sound...');
  }
}
class Lion extends Animal{
  String name = 'Lion';
  int age = 10;
  Lion();
}
class Elephant extends Animal{
  String name = 'Elephant';
  int age = 15;
  Elephant();
}
class Monkey extends Animal{
  String name = 'Monkey';
  int age = 20;
  Monkey();
}
class Zoo{
  List<Map<String,dynamic>> animalList = [];
  Zoo();
  void addAnimal(animal){
    animalList.add({'animalName':animal.name,'animalAge':animal.age});
  }
  void feedAnimals(){
    animalList.forEach((each)=>print('${each['animalName']} is eating'));
  }
}
void main(){
  var zoo = Zoo();
  var lion = Lion();
  var elephant = Elephant();
  zoo.addAnimal(lion);
  zoo.addAnimal(elephant);
  zoo.feedAnimals(); // Output: "Lion is eating", "Elephant is eating"
}