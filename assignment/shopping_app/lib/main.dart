import 'package:flutter/material.dart';
import 'package:shopping_app/home.dart';
void main(){
  runApp(  MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}