
class Corssera{
  List <Teacher> teachers=[];

  void addNewTeacher(String name, String email, String password){
    Teacher newTeacher = Teacher(name, email, password);
    teachers.add(newTeacher);
    print('Teacher : $name . add sucssfully');
  }

     logIn(String teacherName, String password ){
      for( var teacher in teachers){
        if(teacher.name==teacherName && teacher.password==password){
          print('login');
        } 
        print('invalid username or password !');
      }
    }

   
}

class Teacher{
  String? name;
  String? email;
  String? password;
  List <Courses> courses =[];
  List <Sheets> sheets=[];
  Teacher(this.name , this.email, this.password);

  void addCourse(String courseName, String desccription){
    Courses newCourse=Courses( courseName,  desccription );
    courses.add(newCourse);
    print(' Teacher / $name add $courseName to the courses susscssufuly ');
  }
   
   void deleteCourse(){}
  
}
class Courses{
String? courseName;
String? desccription;
List <Lecture> lectures=[];
List <Sheets> sheets=[];
Courses(this.courseName, this.desccription);

void addLecture(String title , String des , String fileName){
  Lecture lecture =Lecture(title,des,fileName);
  lectures.add(lecture);
  print(' leture add sucssfuly');
}



void addSheet(int num , String des , String fileName){
  Sheets sheet =Sheets(num,des,fileName);
  sheets.add(sheet);
  print(' sheet add sucssfuly');
}

}
class Lecture{
  String? title;
  String? description;
  String? fileName;
  Lecture(this.title, this.description,this.fileName);
}
class Sheets{
  int? number;
  String? description;
  String? fileName;
  Sheets(this.number, this.description,this.fileName);
}