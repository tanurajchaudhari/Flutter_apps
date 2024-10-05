/*
impport "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
   @override  
   Widget build(BuildContext context)

}
*/

import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{

  const MyApp({super.key});
   @override  
   Widget build (BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ShoeApp(),

    );
   }
}

class ShoeApp extends StatefulWidget{
  const ShoeApp({super.key});
  @override  
  State createState()=> _ShoeAppState();
}

class _ShoeAppState extends  State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Shoes",
        style: TextStyle(
           fontSize:28,color: Color.fromARGB(255, 98, 176, 240)  
        ),),
      ) ,
      body: Column(
        children: [
          Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",),
          // Container(
          //   height: 254,width: 513,
          //   color: Colors.black,
          //   Image.network("srchttps://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",)
          // ),
        ],
      ),
    );
  }
  

}
