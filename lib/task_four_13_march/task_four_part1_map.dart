import 'dart:io';
void main() {
  List<String> opreation = [
    "Add Value",
    "Remove Value",
    "Update Value",
    "Display Value",
    "Search",
  ];
  Map myMap = {};
  late String contnuie;
  print("-------------- Map Task  ----------------");
  print('');

  do {
    print('-------- Please choose an opreation -------- ');
    print(' 1 :- Add Value ');
    print(' 2 :- Remove Value ');
    print(' 3 :- Update Value ');
    print(' 4 :- Display Value ');
    print(' 5 :- Search  ');
    print('');

    int? choose = int.tryParse(stdin.readLineSync()!);
    print('');
    if (choose == 1) {
      print('Your Choose ${opreation[0]} ');
      print('');

      print("How many values?");
      int? count = int.tryParse(stdin.readLineSync()!);

      for (int i = 0; i < count!; i++) {
        print('ENTER THE KEY:');
        var key = int.tryParse(stdin.readLineSync()!);
        if (myMap.containsKey(key)) {
          print("Key already exists, please enter another key");
          i--;
          continue;
        }
        print("ENTER THE VALUE:");
        var value = stdin.readLineSync();
        myMap[key] = value;
      }
      print("Added successfully");
    } else if (choose == 2) {
      print('Your Choose ${opreation[1]} ');
      print('');
      print("1. Remove by Key");
      print("2. Remove by Value");

      int? type = int.tryParse(stdin.readLineSync()!);
      if (type == 1) {
        print('You Choose remove By Key');
        print('');
        print("Enter key:");
        int? key = int.tryParse(stdin.readLineSync()!);
        if (myMap.containsKey(key)) {
          myMap.remove(key);
          print("Removed successfully");
        } else {
          print("Key is not valid or out of range");
        }
      } else if (type == 2) {
        print('You Choose remove By Value');
        print('');
        print("Enter Value:");
        var foundKey;
        var value = stdin.readLineSync();
        for (var key in myMap.keys) {
          if (myMap[key] == value) {
            foundKey = key;
            break;
          }
        }
        if (foundKey != null) {
          myMap.remove(foundKey);
          print("Removed successfully");
        } else {
          print("Value not found");
        }
      }
    } else if (choose==3){
      print('Your Choose ${opreation[2]} ');
      print('');
      stdout.write('Enter The Old Value To Update: ');
      var oldVal = stdin.readLineSync()!;
      var foundKey;
      for (var key in myMap.keys){
        if(myMap[key]==oldVal){
          foundKey=key;
          break;
        }
      }
      
      if (foundKey !=null ){
         print("Enter new value:");
        var newValue = stdin.readLineSync();
        myMap[foundKey] = newValue;
        print("Updated successfully");
      } else{
         print("Value not found. Try again? (y/n)");
        String ans = stdin.readLineSync()!;

        if (ans == 'y') {
          continue;
        }
      }
    } else if (choose==4){
      print('Your Choose ${opreation[3]} ');
      print('');
      print("All values:");
      print(myMap.values);
      print("Keys with values:");
      for (var key in myMap.keys) {
        print("$key => ${myMap[key]}");
      }
    }else if (choose == 5) {
      print('Your Choose ${opreation[4]} ');
      print('');
      print("1. Found or not");
      print("2. Get key");

      int? type = int.tryParse(stdin.readLineSync()!);

      print("Enter value:");
      var value = stdin.readLineSync();

      if (type == 1) {
        if (myMap.containsValue(value)) {
          print("Found");
        } else {
          print("Not found");
        }
      }

      else if (type == 2) {
        var foundKey;

        for (var key in myMap.keys) {
          if (myMap[key] == value) {
            foundKey = key;
            break;
          }
        }

        if (foundKey != null) {
          print("Key is: $foundKey");
        } else {
          print("Value not found");
        }
      }
    }
    


    stdout.write('DO YOU WANT TO DO ANOTHER OPREATION ? ( Y / N )');
     contnuie = stdin.readLineSync()!;
  } while (contnuie == 'y' || contnuie == 'Y');
  print('PROGRAM END !');
  print('-- Thanks for reading --');
}
