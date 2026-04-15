abstract class Shape {
  String? color;
  bool? filled;
  Shape({this.color = 'blue', this.filled = true});

  String? getColor() {
    return color;
  }

  void setColor(String color) {
    this.color = color;
  }

  bool? isFilled() {
    return filled;
  }

  void setFilled(bool filled) {
    this.filled = filled;
  }

  double getAreaa();
  double getPermiter();
  String printDetials() {
    return 'Shape : Color is $color , Filled: $filled';
  }
}

class Circal extends Shape {
  double? radius;
  Circal({this.radius = 4.89, String color = 'brown', bool filled = false})
    : super(color: color, filled: filled);

  double? getRadius() {
    return radius;
  }

  void setRadius(double radius) {
    radius = radius;
  }

  @override
  double getAreaa() {
    return 3.14 * radius! * radius!;
  }

  @override
  double getPermiter() {
    return 2 * 3.14 * radius!;
  }

  @override
  String printDetials() {
    return 'circle : radios is : $radius , color is : $color , filled : $filled';
  }
}

class Rectangle extends Shape {
  double? width;
  double? lenth;
  Rectangle({
    this.lenth = 4.5,
    this.width = 2.15,
    String color = 'pink',
    bool isFilled = false,
  }) : super(color: color, filled: isFilled);

  double? getWidth() {
    return width;
  }

  void setWidth(double width) {
    width = width;
  }

  @override
  double getAreaa() {
    return width! * lenth!;
  }

  @override
  double getPermiter() {
    return 2 * (width! + lenth!);
  }

  @override
  String printDetials() {
    return ' rectangle : width is $width - lenth is $lenth - color is $color - filled :$filled';
  }
}

void main() {
  print('');
  Circal c = Circal(radius: 10.5, color: 'red', filled: true);
  print(c.printDetials());
  print('');
  print('area of c is ${c.getAreaa()}');
  print('');
  print('------------------------------------');
  print('');
  Rectangle rect = Rectangle(lenth: 25, width: 18);
  print(c.printDetials());
  print('');
  print('area of rect is ${rect.getAreaa()}');
  Shape sh1 = Circal(radius: 12);
  Shape sh2 = Rectangle(lenth: 13, width: 18);
  print('');
  print('sh1 detail is -  ${sh1.getAreaa()}');
  print('');
  print('sh1 detail is -  ${sh2.getAreaa()}');
}
