// Abstract Class and Interfaces
abstract class Shape{
  num area(){
    return 0;
  }
}
class Circle extends Shape{
  int circleInput = 0;
  Circle(this.circleInput);
  @override
  num area() {
    return ((circleInput*circleInput)*3.14);
  }
}
class Rectangle extends Shape{
  int length = 0;
  int width = 0;
  Rectangle(this.width,this.length);
  @override
  num area(){
    return length*width;
  }
}
var circle = Circle(5);
var rectangle = Rectangle(10, 20);
void main(){
  print(circle.area());
  print(rectangle.area());
}