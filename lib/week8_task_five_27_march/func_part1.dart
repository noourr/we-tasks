import 'dart:io';

void main() {

  List<int> myList = [];

  getList(myList);
  showList(myList);
  sumList(myList);
  print('sum list are : ${sumList(myList)}');
  avgList(myList);
  maxAndMini(myList);
  
}

void getList(List<int> nums) {
  print(' How many numbers do u want to add ?!..');
  int sum = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < sum; i++) {
    print('enter number ${i + 1}');
    int value = int.parse(stdin.readLineSync()!);
    nums.add(value);
  }
}

void showList(List<int> nums) {
  print('the list are :-');
  for (int i in nums) {
    print(i);
  }

      print('\n ================');
      print(nums);

}

int sumList(List<int> nums) {
  int sum = 0;

  for (int k in nums) {
    sum = sum + k;
  }

  return sum;

}

double avgList(List<int> nums) {
  int sum = sumList(nums);
  double avg = sum / nums.length;
  print("the avg is : $avg");
  return avg;
}

Map maxAndMini(List<int> nums) {
  Map<String, int> maxAndmini = {};

   int max = nums[0];
  int mini = nums[0];

  for (int m in nums) {
    if (m > max) {
      max = m;
      maxAndmini.addAll({'max': max});
    }

    if (m < mini) {
      mini = m;
      maxAndmini.addAll({'mini': mini});
    }
  }
  print(maxAndmini);
  return maxAndmini;
}
