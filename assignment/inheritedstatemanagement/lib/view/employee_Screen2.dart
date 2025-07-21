import 'package:flutter/material.dart';
import 'package:inheritedstatemanagement/controller/employee_controller.dart';

class  EmployeeScreen2 extends StatefulWidget{
    const EmployeeScreen2({super.key});
    @override  
    State createState()=>_EmployeeScreen2State();
}
class _EmployeeScreen2State extends State{
  @override  
  Widget build (BuildContext context){
       
       Employee retObj=context.dependOnInheritedWidgetOfExactType<Employee>()!;

     return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Screen2"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: [
          Text("Employee Name : ${retObj.empName}"),
          const SizedBox(height: 20,),
          Text("Employee Name : ${retObj.empId}"),
          const SizedBox(height: 20,),
          Text("Employee Name : ${retObj.empSal}"),
          const SizedBox(height: 20,),
        ],
      ),
     );
  }
}