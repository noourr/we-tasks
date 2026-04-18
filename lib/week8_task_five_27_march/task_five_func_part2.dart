void main(){

  double sum=result(a:8,b:7, c:4, d:44.5 );
  double mul= result(a:8, c:4, d:44.5 );
  double divi =result(a:8, c:4, );
  double fact=result(a:8,);
  double nu=result();

  print(' THE RESULT OF SUM IS : $sum');
  print(' THE RESULT OF MULTIBLY IS : $mul');
  print(' THE RESULT OF DIVDE IS : $divi');
  print(' THE RESULT OF FACTORIAL IS : $fact');
  print(' THE RESULT OF NULL IS : $nu');



}

double result({double? a, double? b, double? c, double? d}){

List <double> myNum =[];

if( a !=null )
  myNum.add(a);


if( b !=null )
  myNum.add(b);

if( c !=null )
  myNum.add(c);

if( d !=null )
  myNum.add(d);

int count= myNum.length;

if( count==4 ){
  double sum=0;
  for(int i=0; i < myNum.length; i++ ){

    sum=sum+myNum[i];
  }

return sum;

} else if (count == 3){
  double multi=1;
  for(int i=0; i < myNum.length; i++ ){

    multi=multi*myNum[i];
  }

  return multi;

} else if (count==2){
  double num1 =myNum[0];
  double num2 =myNum[1];
  
  double big;
  double small;
  double res;


  if (num1 > num2 && num2 !=0 ){
    big=num1;
    small=num2;

  } else{
    big=num2;
    small=num1;
    
}

res = big/small;
return res;

} else if (count==1){
  int k = myNum[0].toInt();
  double factorial=1;
  for( int i =k; i>=1; i--){
    factorial= factorial*i;
  }

      return factorial;

} else

 {
  return 1;
  }



}