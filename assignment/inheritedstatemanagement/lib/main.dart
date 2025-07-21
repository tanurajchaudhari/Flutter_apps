import 'package:flutter/material.dart';
import 'package:inheritedstatemanagement/controller/employee_controller.dart';

import 'package:inheritedstatemanagement/view/employee_screen1.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  final String empName="Kanha";
  final int empId=250;
   double empSal=2.5;
 
 @override  
 
 Widget build (BuildContext context){
   return Employee(
    empName:empName,
    empId:empId,
    empSal:empSal,
    child:const MaterialApp(
      home:EmployeeScreen1(),
    ),
   );
 }
}
