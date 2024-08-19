class Vehicle{
  String model = '';
  int year = 0;
  int rentalPricePerDay = 0;
  Vehicle(this.model,this.year,this.rentalPricePerDay);
}
class Car extends Vehicle{
  Car(super.model,super.year,super.rentalPricePerDay);
}
class Bike extends Vehicle{
  Bike(super.model,super.year,super.rentalPricePerDay);
}
class Truck extends Vehicle{
  Truck(super.model,super.year,super.rentalPricePerDay);
}
class RentalService{
  RentalService();
  num calculateRentalCost(car,days){
    return car.rentalPricePerDay*days;
  }
}
void main(){
  var car = Car("Toyota", 2020, 50);
  var rentalService = RentalService();
  print(rentalService.calculateRentalCost(car, 5)); // Output: 250

}