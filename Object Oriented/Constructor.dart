//Constructor
class Person{
  String name = 'Unknown';
  int age = 0;
  Person.withName(this.name):age=0;
  Person.withAge(this.age):name='Unknown';
  String describe(){
    var data = {'name':this.name,'age':this.age};
    return 'Name: ${data['name']}, Age: ${data['age']}';
  }
}
var person1 = Person.withName("Harmanpreet");
var person2 = Person.withAge(25);
void main(){
  print(person1.describe());
  print(person2.describe());
}