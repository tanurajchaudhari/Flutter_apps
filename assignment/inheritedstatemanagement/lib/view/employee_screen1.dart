import 'package:flutter/material.dart';
import 'package:inheritedstatemanagement/view/employee_Screen2.dart';
import 'package:inheritedstatemanagemew/employee_screen2.dart';
import 'package:inheritedstatemanagement/controller/employee_controller.dart';

class EmployeeScreen1 extends  StatefulWidget{

    const EmployeeScreen1({super.key});
    @override  
    State createState()=>_EmployeeScreen1State();

}
class _EmployeeScreen1State extends State{
  @override  
  Widget build(BuildContext context){
     
     return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Screen 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: [
          Text("Employee Name: ${Employee.of(context).empName}"),
          const SizedBox(height: 20,),
          Text("Employee Id:${Employee.of(context).empId}"),
          const SizedBox(height:20),
          Text("Employee Salary: ${Employee.of(context).empSal}"),
          const SizedBox(height: 20,),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
              setState(() {
                Employee.of(context).empSal=3.0;

              });
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const EmployeeScreen2();
              }
              ),
              );
        },

      
      
      )
      );
     

  }
}