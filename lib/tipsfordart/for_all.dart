import 'package:flutter/rendering.dart';

void main(){
// in this value,will show null output
  var number;
  print(number);

  //non-nullable data type ,
  //   String height;
  //   print(height);
  //will get exception because in String u did not ? thus

  //optional or nullable data type
  String? height;
  print(height);
  int? age;

  //three operator to handle upward nullable value
//??  we use this in production
  String heightPlue = height ?? "";
  print(heightPlue);

//??=
  age = 22;
  print(age);

  //if we want to access value or variable from a function we have to use like this
  String? school;
  school?.toLowerCase();
//      =

}