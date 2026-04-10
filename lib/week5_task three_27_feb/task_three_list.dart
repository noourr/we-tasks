import 'dart:io';

void main() {
  List<String> opreation = [
    "Add Value",
    "Remove Value",
    "Update Value",
    "Display"
        "Value",
    "Search",
  ];
  List list = [];
  String contnuie;
  print("--------------List Taks----------------");
  print('');

  do {
    print('-------- Please choose an opreation -------- ');
    print(' 1 :- Add Value ');
    print(' 2 :- Remove Value ');
    print(' 3 :- Update Value ');
    print(' 4 :- Display Value ');
    print(' 5 :- Search  ');
    print('');

    int choois = int.parse(stdin.readLineSync()!);
    print('');

    if (choois == 1) {
      print('Your Choose ${opreation[0]} ');
      print('');
      stdout.write('How many values do you want to add ?');
      print('');
      int valNum = int.parse(stdin.readLineSync()!);
      for (int index = 0; index < valNum; index++) {
        stdout.write('ENTER VALUE NUMBER:-${index + 1}:');
        var value = int.parse(stdin.readLineSync()!);
        list.add(value);
      }
      print('');
      print('Values added successfully !');
      print('List now: $list');
    } else if (choois == 2) {
      print('Your Choose ${opreation[1]} ');
      print('');

      print('Remove By :-');
      print(' 1- Value');
      print(' 2- index');
      int removeBy = int.parse(stdin.readLineSync()!);

      if (removeBy == 1) {
        print('Yoou Choose remove By Value');
        stdout.write('ENTER THE VALUE TO REMOVE :  ');
        var oldVal = int.parse(stdin.readLineSync()!);

        if (list.contains(oldVal)) {
          list.remove(oldVal);
          print('Value $oldVal removed successfully !');
          print('List now: $list');
        } else {
          print('VALUE NOT FOUND . ENTER VALID VALUE TO REMOVE');
          var newVal = stdin.readByteSync();
          list.remove(newVal);
        }
      } else if (removeBy == 2) {
        print('Yoou Choose remove By Idex');
        stdout.write('ENTER THE INDEX TO REMOVE THE VALUE :  ');
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < list.length) {
          list.removeAt(index);
          print('Value at index $index removed successfully !');
          print('List now: $list');
        } else {
          print('INVALID INDEX .');
        }
      }
    } else if (choois == 3) {
      print('Your Choose ${opreation[2]} ');
      print('');
      stdout.write('Enter The Old Value To Update:');
      var oldVal = int.parse(stdin.readLineSync()!);
      int index = list.indexOf(oldVal);

      if (index != -1) {
        stdout.write('Enter The New Value to Replace :- $oldVal : ');
        var newVal = int.parse(stdin.readLineSync()!);
        list[index] = newVal;
        print('Value $oldVal updated to $newVal successfully !');
        print('List now: $list');
      } else {
        print('value Not Found . ');
        print('Enter New Value :-');
        var newVal = stdin.readLineSync();
        list.add(newVal);
        print('');
        print('Value Added to the List');
      }
    } else if (choois == 4) {
      print('Your Choose ${opreation[3]} ');
      print('');
      print('Display Values Spreatetd');
      for (int i in list) {
        print(i);
      }
      print('');
      print('==========================');
      print('Display Values in one line ');
      print(list);
      print('==========================');
    } else if (choois == 5) {
      print('Your Choose ${opreation[4]} ');
      print('');
      print('Search by :-');
      print(' 1 - Value ');
      print(' 2 - Index ');
      int searchBy = int.parse(stdin.readLineSync()!);

      if (searchBy == 1) {
        print('You Choose Search By Value');
        print('');
        stdout.write('Enter The Value To Search :');
        var value = int.parse(stdin.readLineSync()!);
        if (list.contains(value)) {
          int index = list.indexOf(value);
          print('VALUE FOUND AT INDEX OF $index');
        } else {
          print('VALUE NOT FOUND !');
        }
      } else if (searchBy == 2) {
        print('You Choose Search By Index');
        print('');
        stdout.write('Enter The Index  To Search for value :');
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 0 && index < list.length) {
          stdout.write(
            'VALID INDEX :- Value at index $index is : ${list[index]}',
          );
        } else {
          print('INVALID INDEX !');
        }
      }
    }

    stdout.write('DO YOU WANT TO DO ANOTHER OPREATION ? ( Y / N )');
    contnuie = stdin.readLineSync()!;
  } while (contnuie == 'y');
  print('PROGRAM END !');
  print('-- Thanks for reading --');
}
