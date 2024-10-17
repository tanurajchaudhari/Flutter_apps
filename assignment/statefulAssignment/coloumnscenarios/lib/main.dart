import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build (BuildContext context ){
    print("DEvice width : ${MediaQuery.of(context).size.width}");
    print("device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home : Scaffold(
        appBar:AppBar(
          title :const Text("Column demo",style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,),),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Container(
         
                height: 200,width: 200,
                color: Colors.blue,

              ),
            ],
          ),
         
        ),
      ),
    );

  }
}