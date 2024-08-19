class Product{
  String productName = '';
  int productPrice = 0;
  Product(this.productName,this.productPrice);
}
class Customer{
  int userID = 0;
  String _userName = '';
  String _email = '';
  Customer(this.userID,this._email,this._userName);
}
class Order{
  int discount = 0;
  int userID = 0;
  List<Map<String,dynamic>> products = [];
  Order(this.discount,this.userID);

  void addProduct(product){
    products.add({'productName':product.productName,'productPrice':product.productPrice});
  }

  double calculateTotal(){
    double total = 0;
    products.forEach((each)=>total+=each['productPrice']);
    return total;
  }
}
void main(){
  var product1 = Product("Laptop", 1000);
  var product2 = Product("Mouse", 50);
  var customer = Customer(512, 'goo@yahoo.com', 'goo');
  var order = Order(0,customer.userID);
  order.addProduct(product1);
  order.addProduct(product2);
  print(order.calculateTotal());
}