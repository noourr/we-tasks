import 'package:we_tassks/oop_exam_22_april/products.dart';
import 'package:we_tassks/oop_exam_22_april/visitor.dart';

class Website {
  String? name;
  List<Product> products = [];
  List<Visitor> visitors = [];

  Website(this.name);

  void addVistor(String visitorName, String visitorEmail) {
    Visitor visitor = Visitor(visitorName, visitorEmail);
    visitors.add(visitor);
  }

  void addProduct(Product prod) {
    products.add(prod);
  }

  void removeProd(String prodName) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == prodName) {
        products.removeAt(i);
        break;
      }
    }
  }

  int searchByName(String prodName){
    for(int i =0; i< products.length; i++){
      if(products[i].name == prodName){
        return i;
      }
    }
    return -1;

  }

  int searchByPrice(double price){
    for(int i =0; i< products.length; i++){
      if(products[i].price == price){
        return i;
      }
    }
    return -1;

  }
}
