import 'package:flutter/material.dart';
import 'package:expensive_manager_app/spalsh.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context ){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );

  }
}