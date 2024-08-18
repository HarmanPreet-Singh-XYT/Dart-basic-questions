//Factory Constructors
class Vehicle{
  String name = '';
  Vehicle._internal(this.name);
  factory Vehicle.create(String name){
    switch (name) {
      case 'car':
        return Car();
      case 'bike':
        return Bike();
      default:
        throw Exception('Invalid Instance');
    }
  }
}
class Car extends Vehicle{
  Car():super._internal('Car');
  @override
  String toString(){
    return 'Instance of Car';
  }
}
class Bike extends Vehicle{
  Bike():super._internal('Bike');
  @override
  String toString(){
    return 'Instance of Bike';
  }
}
var vehicle = Vehicle.create('car');
void main(){
  print(vehicle);
}