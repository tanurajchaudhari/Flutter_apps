import 'dart:developer';
import 'package:flutter/material.dart';
class Employee extends InheritedWidget{
   final empName;
    final empId;
    final double empSal;

    const Employee(String s, {
      super.key,
      required this.empId,
      required this.empName,
      required this.empSal,
      required super.child,
      }
    );
    static Employee of(BuildContext context){
           return context.dependOnInheritedWidgetOfExactType()!;

    }
    @override  
    bool updateShouldNotify(Employee oldWidget){
                log("In update should notify");
                return empSal!=oldWidget.empSal;
    }
  }



