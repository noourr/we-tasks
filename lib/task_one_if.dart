import 'dart:io';

void main() {
  List products = [
    {'code': 'Sh01', 'name': 'Shoes', 'price': 400, 'discount': 0.15, 'qty': 0},
    {'code': 'B02', 'name': 'Belt', 'price': 150, 'discount': 0.75, 'qty': 0},
    {
      'code': 'Ts03',
      'name': 'T-shirt',
      'price': 350,
      'discount': 0.10,
      'qty': 0,
    },
    {
      'code': 'Ja04',
      'name': 'Jacket',
      'price': 350,
      'discount': 0.15,
      'qty': 0,
    },
  ];

  print('====== Available Products ======');
  for (int i = 0; i < products.length; i++) {
    print(
      '${i + 1}  ${products[i]['name']} - code: ${products[i]['code']} - price: ${products[i]['price']}',
    );
  }
  print(' choose 0 to Finish selection');
  print('=================================');

  while (true) {
    stdout.write('Choose product number (0 to finish ): ');
    int? choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) {
      print('Selection finished');
      break;
    }
    if (choice < 1 || choice > products.length) {
      print('Invalid choice! try again');
      continue;
    }
    Map selectedProduct = products[choice - 1];
    stdout.write('Enter quantity for ${selectedProduct['name']}: ');
    int qty = int.parse(stdin.readLineSync()!);
    selectedProduct['qty'] += qty;
    print('Added $qty x ${selectedProduct['name']}');
  }

  for (int i = 0; i < products.length; i++) {
    int qty = products[i]['qty'];
    double price = products[i]['price'].toDouble();
    double discount = products[i]['discount'];

    double totalBefore = price * qty;
    double discountValue = 0;
    double totalAfter = totalBefore;

    if (qty > 5) {
      discountValue = totalBefore * discount;
      totalAfter = totalBefore - discountValue;
    }
    products[i]['totalBefore'] = totalBefore;
    products[i]['discountValue'] = discountValue;
    products[i]['totalAfter'] = totalAfter;
  }

  print('\n ================ RECEIPT ================');
  print(' | CODE | PRODUCT    | QTY | UNIT   | BEFORE DIS | AFTER DIS |');
  print('----------------------------------------------------------------');

  double grandTotalBefore = 0;
  double grandTotalAfter = 0;

  for (int i = 0; i < products.length; i++) {
    int qty = products[i]['qty'];
    if (qty == 0) continue;

    String code = products[i]['code'];
    String name = products[i]['name'];
    double price = products[i]['price'].toDouble();
    double totalBefore = products[i]['totalBefore'];
    double totalAfter = products[i]['totalAfter'];

    grandTotalBefore += totalBefore;
    grandTotalAfter += totalAfter;

    print(
      '| ${code.padRight(4)} | ${name.padRight(10)} | ${qty.toString().padLeft(3)} | ${price.toStringAsFixed(2).padLeft(6)} | ${totalBefore.toStringAsFixed(2).padLeft(10)} | ${totalAfter.toStringAsFixed(2).padLeft(9)} |',
    );
    print('----------------------------------------------------------------');
  }

  print('TOTAL BEFORE DIS = ${grandTotalBefore.toStringAsFixed(2)} EGP');
  print('TOTAL AFTER  DIS = ${grandTotalAfter.toStringAsFixed(2)} EGP');
  print('================================================================');
  
}
