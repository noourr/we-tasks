import 'dart:io';

void main(){


String prodOne='Hody';
String prodTwo='T-shirt';
String prodThree='Jaket';
String prodFour='Belt';

double priceOne=490.999;
double priceTwo=200;
double priceThree=2700.999;
double priceFour=150.999;

double discOne=15;
double discTwo=7.5;
double discThree=10;
double discFour=15;

print('  $prodOne    :-    Price : $priceOne  -  Discount:  $discOne% ');
print('  $prodTwo :-    Price : $priceTwo    -  Discount:  $discTwo% ');
print('  $prodThree   :-    Price : $priceThree -  Discount:  $discThree% ');
print('  $prodFour    :-    Price : $priceFour  -  Discount:  $discFour% ');
print('');
print("============================");
print('');
print('enter How many do you need from $prodOne');
int qun1=int.parse(stdin.readLineSync()!);
print('enter How many do you need from $prodTwo');
int qun2=int.parse(stdin.readLineSync()!);
print('enter How many do you need from $prodThree');
int qun3=int.parse(stdin.readLineSync()!);
print('enter How many do you need from $prodFour');
int qun4=int.parse(stdin.readLineSync()!);



double grandprice1=priceOne*qun1;
double afterDisc1= (qun1>=5) ? grandprice1-(grandprice1*discOne/100)
:grandprice1;

double grandprice2=priceTwo*qun2;
double afterDisc2= (qun2>=5) ? grandprice2-(grandprice2*discTwo/100) 
:grandprice1;

double grandprice3=priceThree*qun3;
double afterDisc3= (qun3>=5) ? grandprice3-(grandprice3*discThree/100)
:grandprice1;

double grandprice4=priceFour*qun4;
double afterDisc4= (qun4>=5) ? grandprice4-(grandprice4*discFour/100)
:grandprice1;


double totalPriceBefor=grandprice1+grandprice2+grandprice3+grandprice4;
double totalPriceAfter=afterDisc1+afterDisc2+afterDisc3+afterDisc4;





print('');
print("===============================================");
print(' qty  ||  Name      || Price      ||  Discount value');
print("===============================================");
print('  $qun1   ||  $prodOne      ||  $grandprice1       ${(qun1>=5) ? discOne : " "}  ');
print('  $qun2   ||  $prodTwo   ||  $grandprice2         ${(qun2>=5) ? discTwo : " "}');
print('  $qun3   ||  $prodThree     ||  $grandprice3      ${(qun3>=5) ? discThree : " "} ');
print('  $qun4   ||  $prodFour      ||  $grandprice4       ${(qun4>=5) ? discFour : " "} ');
print('');
print("===============================================");
print('');
print('Total price Befor Dis is : ${totalPriceBefor.toStringAsFixed(2)}');
print('Total Price After Dis is : ${totalPriceAfter.toStringAsFixed(2)}');

}