// Classes

//simple Class
class Person{
  String name='';
  int age = 0;
  Person(this.name,this.age);
  String describe(){
    var object = {'name':this.name,'age':this.age};
    return 'Name: ${object['name']}, Age: ${object['age']}';
  }
}
var person = Person('Harman',20);
void main(){
  print(person.describe());
}