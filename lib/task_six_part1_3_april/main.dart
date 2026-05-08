import 'dart:io';

import 'task_six_cars.dart';

void main() {
  List<Cars> myCars = [];

  double totalPrice = 0.0;
  double afterDis = 0.0;

  print('\n');
  print('--------------------------------------\n');
  print('HOW MANY CARS DO YOU WANT TO ADD ?!...\n');
  int carsNum = int.parse(stdin.readLineSync()!);
  print('\n');

  for (int i = 0; i < carsNum; i++) {
    print('ENTER CAR ${i + 1} ID =- ');
    int id = int.parse(stdin.readLineSync()!);
    print('\n');

    print('ENTER CAR ${i + 1} MODEL =- ');
    String model = stdin.readLineSync()!;
    print('\n');

    print('ENTER CAR ${i + 1} COLOR =- ');
    String color = stdin.readLineSync()!;
    print('\n');

    print('ENTER CAR ${i + 1} PRICE =- ');
    double price = double.parse(stdin.readLineSync()!);
    print('\n');

    myCars.add(Cars(id, model, color, price));
  }

  for (int i = 0; i < myCars.length; i++) {
    print("Code: ${myCars[i].id}");
    print("Color: ${myCars[i].color}");
    print("Price: ${myCars[i].price}");
    print("Model: ${myCars[i].model}");
    print("\n===================================\n");
  }

  for (int i = 0; i < myCars.length; i++) {
    totalPrice = totalPrice + myCars[i].price!;
  }

  print('\n TOTAL PRICE IS : $totalPrice \n');
  print("\n===================================\n");
  afterDis = totalPrice - (totalPrice / 100 * 15);
  print('\n PRICE AFTER DISCOUNT IS : $afterDis \n');
  print("\n===================================\n");

  Cars maxPrice = myCars[0];
  Cars miniPrice = myCars[0];

  for (int i = 0; i < myCars.length; i++) {
    if (maxPrice.price! < myCars[i].price!) {
      maxPrice = myCars[i];
    }
  }

  print("\n===================================\n");
  print("\n Max price car:");
  print("Code: ${maxPrice.id}");
  print("Color: ${maxPrice.color}");
  print("Price: ${maxPrice.price}");
  print("Model: ${maxPrice.model}");

  print("\n===================================\n");

  for (int i = 0; i < myCars.length; i++) {
    if (miniPrice.price! > myCars[i].price!) {
      miniPrice = myCars[i];
    }
  }

  print("\n===================================\n");

  print("\n  MINI  price car:");
  print("Code: ${miniPrice.id}");
  print("Color: ${miniPrice.color}");
  print("Price: ${miniPrice.price}");
  print("Model: ${miniPrice.model}");
}
