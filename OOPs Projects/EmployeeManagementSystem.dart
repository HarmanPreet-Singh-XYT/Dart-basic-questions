class Employee{
  String name = '';
  String position = '';
  int salary = 0;
  Employee(this.name,this.position,this.salary);
}
class Manager extends Employee{
  int bonus = 0;
  Manager(super.name,super.position,super.salary,this.bonus);
  num calculateTotalCompensation(){
    return salary+bonus;
  }
}
void main(){
  var manager = Manager("Harmanpreet", "Project Manager", 50000, 10000);
  print(manager.calculateTotalCompensation());
}