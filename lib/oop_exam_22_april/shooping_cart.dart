import 'package:we_tassks/oop_exam_22_april/products.dart';

class ShoppingCart {
  List<Product> products = [];

  void addProd(Product value) {
    products.add(value);
  }

  void removeProd(String prodName) {
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == prodName) {
        products.removeAt(i);
        break;
      }
    }
  }

  double totalPrice() {
    double total = 0;
    for (int i = 0; i < products.length; i++) {
      total = total + products[i].price!;
    }
    return total;
  }

  double priceAfterDisc() {
    double afterDisc = 0;

    for (int i = 0; i < products.length; i++) {
      afterDisc =
          afterDisc +
          (products[i].price! - (products[i].price! * products[i].disc! / 100));
    }
    return afterDisc;
  }
}