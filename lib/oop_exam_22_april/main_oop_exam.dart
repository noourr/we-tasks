
import 'package:we_tassks/oop_exam_22_april/products.dart';
import 'package:we_tassks/oop_exam_22_april/visitor.dart';
import 'package:we_tassks/oop_exam_22_april/web_site.dart';

void main() {

Website teczone=Website('tecZone');

Product laptop=Product('lapTop Hb', 'studing laptop', 20000, 10, 4);
Product headphone=Product('headphone', 'studing headphone', 1000, 20, 10);
Product charger=Product('charger', 'suber fast', 800, 5, 10);

teczone.addProduct(laptop);
teczone.addProduct(headphone);
teczone.addProduct(charger);

teczone.addVistor('Ahmed', 'ahmed@email.com');
teczone.addVistor('sara', 'sara@email.com');

Visitor ahmed=teczone.visitors[0];

Visitor sara=teczone.visitors[1];

ahmed.cart?.addProd(laptop);
ahmed.cart?.addProd(headphone);


sara.cart?.addProd(charger);
ahmed.cart?.addProd(headphone);

print(" ahmed's total price is : ${ahmed.cart!.totalPrice()} egp ");
print(" ahmed's total price after dis  is : ${ahmed.cart!.priceAfterDisc()} egp ");

print(' index of the headpphone is : ${teczone.searchByName("headphone")}');

teczone.removeProd('lapTop Hb');

print('prod after remove is : ${teczone.products.length}');







}





