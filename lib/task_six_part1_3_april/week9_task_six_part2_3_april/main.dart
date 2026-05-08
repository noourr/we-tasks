
import 'task_six_part2_super_cars.dart';
void main(){

 SuperCars superCar=SuperCars();

  print('\n');
  print('--------------------------------------\n');
  print('HOW MANY CARS DO YOU WANT TO ADD ?!...\n');

  superCar.enterDataByUser();
  superCar.printCarsinfo();
  superCar.getALlPrice();
  superCar.printPrice();
  superCar.printMaxAndMini();

}