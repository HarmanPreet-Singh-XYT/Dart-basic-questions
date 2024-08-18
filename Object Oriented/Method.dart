// method
class Person{
  String name = 'Unknown';
  int age = 0;
  Person(this.name,this.age);
  String describe(){
    return 'Name: $name, Age:$age';
  }
}
class Student extends Person{
  String grade = 'Unknown';
  Student(super.name,super.age,this.grade);
  @override
  String describe(){
    return 'Name: $name, Age:$age, Grade:$grade';
  }
}
var student = Student('Harman', 18, 'A');
void main(){
  print(student.describe());
}