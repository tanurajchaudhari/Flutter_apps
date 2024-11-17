//main.dart
import"package:flutter/material.dart";
// ignore: depend_on_referenced_packages
import"todo_app_ui.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override  
    Widget build(BuildContext context ){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: todo_app_ui(),
      );
    }
}