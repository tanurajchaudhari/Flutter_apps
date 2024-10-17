import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp( const MainApp());
}
class MainApp extends StatelessWidget{
  const   MainApp({super.key});

  @override  
  Widget build(BuildContext context ){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ListView Builder Demo",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          
          itemBuilder:(BuildContext context, int index){
          return Text("Index: $index",
          style: const TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold
          ),
          );
        },
        ),
           
      ),
    );
  }
}