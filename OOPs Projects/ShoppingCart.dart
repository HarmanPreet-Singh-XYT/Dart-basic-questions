import 'dart:math';

class Product{
  String name = '';
  int ID = Random().nextInt(100);
  int price = 0;
  Product(this.name,this.price);
}
class ShoppingCart{
  List cartList = [];
  void addProduct(product){
    cartList.add({'productID':product.ID,'productName':product.name,'productPrice':product.price});
  }
  void removeProduct(product){
    cartList.removeWhere((each)=>each['productID']==product.ID);
  }
  num calculateTotal(){
    num total = 0;
    cartList.forEach((each)=>total+=each['productPrice']);
    return total;
  }
}
void main(){
  var cart = ShoppingCart();
  var product = Product("Phone", 700);
  cart.addProduct(product);
  cart.removeProduct(product);
  print(cart.calculateTotal()); // Output: 0
}