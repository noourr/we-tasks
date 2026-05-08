import 'dart:io';

void main() {
  String prod1 = 'Nescafe';
  String prod2 = 'Cofee';
  String prod3 = 'Esspresoo Beans';
  String prod4 = 'Milk';

  double price1 = 12.75;
  double price2 = 120.50;
  double price3 = 240.75;
  double price4 = 45.5;

  double qty1 = 0;
  double qty2 = 0;
  double qty3 = 0;
  double qty4 = 0;

  String choice;

  print('');
  print(' \n     ======= Welcome Back ======== ');
  print('\n');
  do {
    print(' \n     ======= PRODUCTS ======= ');
    print('\n');
    print(' 1:-  $prod1           ||  $price1   .');
    print(' 2:-  $prod2             ||  $price2   .');
    print(' 3:-  $prod3   ||  $price3  .');
    print(' 4:-  $prod4              ||  $price4    .');
    print('');
    print(' Chooes product Number ');
    int prodNum = int.parse(stdin.readLineSync()!);
    print('');
    print(' How many pieces do you want? ');
    int amount = int.parse(stdin.readLineSync()!);

    if (prodNum == 1)
      qty1 += amount;
    else if (prodNum == 2)
      qty2 += amount;
    else if (prodNum == 3)
      qty3 += amount;
    else if (prodNum == 4)
      qty4 += amount;
    else {
      print('-- Wrong Number --');
      print('-- Please choose coreect number --');
    }
    stdout.write('Do you want to choose another Product ?  ( Y / N ):');
    choice = stdin.readLineSync()!.toUpperCase();
  } while (choice == 'Y');

  double totalPrice1 = price1 * qty1;
  double totalPrice2 = price2 * qty2;
  double totalPrice3 = price3 * qty3;
  double totalPrice4 = price4 * qty4;

  double finalPriceTotal =
      totalPrice1 + totalPrice2 + totalPrice3 + totalPrice4;

  print('');
  print('--------------------------- invoice ---------------------------');
  print('');
  print('  product name |  Qty  |  price ');
  print('------------------------------------------------------');

  if (qty1 > 0) print('$prod1  |  $qty1  | $totalPrice1 ');

  if (qty2 > 0) print('$prod2  |  $qty2  | $totalPrice2 ');

  if (qty3 > 0) print('$prod3  |  $qty3  | $totalPrice3 ');

  if (qty4 > 0) {
    print('$prod4  |  $qty4  | $totalPrice4 ');
  }

  print('------------------------------------------------------');
  print('Total Price : $finalPriceTotal ');
}

//
// import 'dart:io';

// void main() {
//   List products = [
//     {'code': 'Sh01', 'name': 'Shoes', 'price': 400, 'discount': 0.15, 'qty': 0},
//     {'code': 'B02', 'name': 'Belt', 'price': 150, 'discount': 0.75, 'qty': 0},
//     {
//       'code': 'Ts03',
//       'name': 'T-shirt',
//       'price': 350,
//       'discount': 0.10,
//       'qty': 0,
//     },
//     {
//       'code': 'Ja04',
//       'name': 'Jacket',
//       'price': 350,
//       'discount': 0.15,
//       'qty': 0,
//     },
//   ];

//   print('====== Available Products ======');
//   for (int i = 0; i < products.length; i++) {
//     print(
//       '${i + 1}  ${products[i]['name']} - code: ${products[i]['code']} - price: ${products[i]['price']}',
//     );
//   }
//   print(' choose 0 to Finish selection');
//   print('=================================');

//   while (true) {
//     stdout.write('Choose product number (0 to finish ): ');
//     int? choice = int.parse(stdin.readLineSync()!);
//     if (choice == 0) {
//       print('Selection finished');
//       break;
//     }
//     if (choice < 1 || choice > products.length) {
//       print('Invalid choice! try again');
//       continue;
//     }
//     Map selectedProduct = products[choice - 1];
//     stdout.write('Enter quantity for ${selectedProduct['name']}: ');
//     int qty = int.parse(stdin.readLineSync()!);
//     selectedProduct['qty'] += qty;
//     print('Added $qty x ${selectedProduct['name']}');
//   }

//   for (int i = 0; i < products.length; i++) {
//     int qty = products[i]['qty'];
//     double price = products[i]['price'].toDouble();
//     double discount = products[i]['discount'];

//     double totalBefore = price * qty;
//     double discountValue = 0;
//     double totalAfter = totalBefore;

//     if (qty > 5) {
//       discountValue = totalBefore * discount;
//       totalAfter = totalBefore - discountValue;
//     }
//     products[i]['totalBefore'] = totalBefore;
//     products[i]['discountValue'] = discountValue;
//     products[i]['totalAfter'] = totalAfter;
//   }

//   print('\n ================ RECEIPT ================');
//   print(' | CODE | PRODUCT    | QTY | UNIT   | BEFORE DIS | AFTER DIS |');
//   print('----------------------------------------------------------------');

//   double grandTotalBefore = 0;
//   double grandTotalAfter = 0;

//   for (int i = 0; i < products.length; i++) {
//     int qty = products[i]['qty'];
//     if (qty == 0) continue;

//     String code = products[i]['code'];
//     String name = products[i]['name'];
//     double price = products[i]['price'].toDouble();
//     double totalBefore = products[i]['totalBefore'];
//     double totalAfter = products[i]['totalAfter'];

//     grandTotalBefore += totalBefore;
//     grandTotalAfter += totalAfter;

//     print(
//       '| ${code.padRight(4)} | ${name.padRight(10)} | ${qty.toString().padLeft(3)} | ${price.toStringAsFixed(2).padLeft(6)} | ${totalBefore.toStringAsFixed(2).padLeft(10)} | ${totalAfter.toStringAsFixed(2).padLeft(9)} |',
//     );
//     print('----------------------------------------------------------------');
//   }

//   print('TOTAL BEFORE DIS = ${grandTotalBefore.toStringAsFixed(2)} EGP');
//   print('TOTAL AFTER  DIS = ${grandTotalAfter.toStringAsFixed(2)} EGP');
//   print('================================================================');

// }
