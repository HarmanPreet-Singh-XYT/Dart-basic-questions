class Person{
  String name = '';
  int age = 0;
  Person(this.name,this.age);
}
class Student extends Person{
  String studentID = '';
  Student(super.name,super.age,this.studentID);
  String getGrade(course){
    String grade = '';
    course.students.forEach((each) {
      if (each['studentID'] == studentID) {
        grade=each['grade'];
      }
    });
    return grade;
  }
}
class Professor extends Person{
  int salary = 0;
  Professor(super.name,super.age,this.salary);
}
class Course{
  String course = '';
  Object Professor;
  List students = [];
  Course(this.course,this.Professor);
  void enrollStudent(student){
    students.add({'name':student.name,'age':student.age,'studentID':student.studentID,'grade':'Not Available'});
  }
 void assignGrade(student, grade) {
    students = students.map((each) {
      if (each['studentID'] == student.studentID) {
        return {...each, 'grade': grade};
      } else {
        return each;
      }
    }).toList();
  }
}
void main(){
  var student = Student("Harmanpreet", 20, "S12345");
  var professor = Professor("Dr. Smith", 45, 80000);
  var course = Course("Dart Programming", professor);
  course.enrollStudent(student);
  course.assignGrade(student, "A");
  print(student.getGrade(course)); // Output: "A"
}