import 'dart:io';

void main() {
  List<Map> students = [];
  //    List <Map>  subjects=[];
  while (true) {
    print('ENTER NUMBER OF SUTDENTS (AT LEAST 5)');
    print('');
    int studentsCount = int.parse(stdin.readLineSync()!);
    if (studentsCount < 5) {
      print('');
      print(' YOU MUST ENTER AT LEATS 5 STUDENTS !');
      print('');
      continue;
    }

    for (int i = 0; i < studentsCount; i++) {
      print(' ENTER DATA FOR STUDENT NUMBER ${i + 1}');
      print('');
      print('ENTER ID: ');
      print('');
      String id = stdin.readLineSync()!;
      print('');
      print('ENTER NAME: ');
      print('');
      String name = stdin.readLineSync()!;
      print('');
      List<Map> subjects = [];
      print('ENTER NUMBERS OF SUBJECTS (AT LEATS 4 )');
      print('');
      int subCount = int.parse(stdin.readLineSync()!);
      if (subCount < 4) {
        print('');
        print(' YOU MUST ENTER AT LEATS 4 SUBJETCS !');
        print('');
        i--;
        continue;
      }
      for (int t = 0; t < subCount; t++) {
        print('ENTER SUBJECT NAME : ');
        print('');
        String? subName = stdin.readLineSync();
        print('');
        print('ENTER DEGREE : ');
        print('');
        double? degree = double.parse(stdin.readLineSync()!);
        print('');
        subjects.add({'name': subName, 'degree': degree});
      }
      students.add({'id': id, 'name': name, 'subjects': subjects});
    }
    print('\n');
    print('CHOOSE \n 1- ADD MORE STUDENTS ? \n 2- PRINT REPORT !');
    int choose = int.parse(stdin.readLineSync()!);
    if (choose == 1) {
      continue;
    } else {
      break;
    }
  }

  double highest = -1;
  double lowest = 101;
  String topStu = '';
  String lowestStu = '';

  for (var s in students) {
    print('--------------------');
    print('ID : ${s['id']} |  Name : ${s['name']}');
    print('');
    List subjectsForPrint = s['subjects'];
    double total = 0;
    for (var sub in subjectsForPrint) {
      print(' Subject: ${sub['name']} => ${sub['degree']}');
      print('');
      total += sub['degree'];
    }

    double per = total / subjectsForPrint.length;
    print('Total : $total');
    print('');
    print('Percentage : $per');
    print('');
    bool pass = true;
    for (var sub in subjectsForPrint) {
      if (sub['degree'] < 50) {
        pass = false;
        break;
      }
    }
    if (pass) {
      print('Status : passed');
    } else {
      print('Status : Failed !');
    }

    if (per < 50) {
      print(' Grade :FAILED !');
    } else if (per < 65) {
      print(' Grade :ACCEPTED !');
    } else if (per < 75) {
      print(' Grade :GOOD !');
    } else if (per < 85) {
      print(' Grade : VERY GOOD');
    } else if (per < 95) {
      print('Grade : EXCELLENT !');
    } else {
      print('Grade : OutStanding');
    }

    if (per > highest) {
      highest = per;
      topStu = s['name'];
    }
    if (per < lowest) {
      lowest = per;
      lowestStu = s['name'];
    }
  }
  print('');
  print('=================== \n');
  print('TOP Student : $topStu with $highest% ');
  print('=================== \n');
  print('Lowest Student : $lowestStu with $lowest% ');
}
// test git 