// inheritance

class Person{
  String name = 'Unknown';
  int age = 0;
  Person.withAge(this.age);
  Person.withName(this.name);
  String describePerson(){
    return '$name $age';
  }
}
class Animal extends Person{
  String animalName = 'elephant';
  Animal(this.animalName):super.withName(animalName);
  String describeAnimal(){
    return '$name $age';
  }
}
var person1 = Person.withName('Harman');
var person = Animal('Elephant');
void main(){
  print(person1.name);
  print(person.describePerson());
}