import 'dart:io';

class SuperCars {
    int? _code ;
    String? _model ;
    String? _color;
    double? _price ; 
    List<SuperCars> mySuperCars = [];
    double totalPrice = 0.0;
  double afterDis = 0.0;




  SuperCars({
    int code = 001,
    String model = 'caar model',
    String color = 'Car color',
    double price = 400000,
  }){
     _code=code;
     _model=model;
     _color=color;
     _price=price;
  }
  

  void setCode(int value) {
    _code=value;
    
  }

  void setModel(String value) {
    _model=value;
  }

  void setColor(String value) {
    _color=value;
  }

  void setPrice(double value) {
    _price=value;
    
  }
  
  int? getCode(){
    return _code;
  }

  String? getModel(){
    return _model;
  }

  String? getColor(){
    return _color;
  }

  double? getPrice(){
    return _price;
  }


  void enterDataByUser(){


    int carsNum = int.parse(stdin.readLineSync()!);
  print('\n');
    for (int i = 0; i < carsNum; i++) {
    print('ENTER CAR ${i + 1} ID =- ');
    int code = int.parse(stdin.readLineSync()!);
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

        mySuperCars.add(SuperCars(code: code,model: model, color: color, price: price));

  }
  }


  void printCarsinfo(){
    for (int i = 0; i < mySuperCars.length; i++) {
    print("Code: ${mySuperCars[i]._code}");
    print("Color: ${mySuperCars[i]._color}");
    print("Price: ${mySuperCars[i]._price}");
    print("Model: ${mySuperCars[i]._model}");
    print("\n===================================\n");
  }
  }


  double getALlPrice(){
    totalPrice = 0.0;
    for (int i = 0; i < mySuperCars.length; i++) {
    totalPrice = totalPrice + mySuperCars[i]._price!;

  }
  return totalPrice;
  }

  void printPrice(){
    print('\n TOTAL PRICE IS : $totalPrice \n');
  print("\n===================================\n");
  afterDis = totalPrice - (totalPrice / 100 * 15);
  print('\n PRICE AFTER DISCOUNT IS : $afterDis \n');
  print("\n===================================\n");

  }


void printMaxAndMini(){
  if (mySuperCars.isEmpty) {
    print("No cars added yet!");
    return;
  }
  SuperCars maxPrice = mySuperCars[0];
  SuperCars miniPrice = mySuperCars[0];

  for (int i = 0; i < mySuperCars.length; i++) {
    if (maxPrice._price! < mySuperCars[i]._price!) {
      maxPrice = mySuperCars[i];
    }
  }

  print("\n===================================\n");
  print("\n Max price car:");
  print("Code: ${maxPrice._code}");
  print("Color: ${maxPrice._color}");
  print("Price: ${maxPrice._price}");
  print("Model: ${maxPrice._model}");

  print("\n===================================\n");

  for (int i = 0; i < mySuperCars.length; i++) {
    if (miniPrice._price! > mySuperCars[i]._price!) {
      miniPrice = mySuperCars[i];
    }
  }

  print("\n===================================\n");

  print("\n  MINI  price car:");
  print("Code: ${miniPrice._code}");
  print("Color: ${miniPrice._color}");
  print("Price: ${miniPrice._price}");
  print("Model: ${miniPrice._model}");
}




 
}
