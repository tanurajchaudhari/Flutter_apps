import "package:flutter/cupertino.dart";
import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override  
  Widget build(BuildContext context ){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container color change ",
      home:ContainerColorApp(),
    );
  }
}
class ContainerColorApp extends StatefulWidget{
   ContainerColorApp({super.key});
  @override  
  State  createState()=>_ContainerColorAppState();

}
class _ContainerColorAppState extends State{
  bool colorChange=true;

  @override  
  Widget build (BuildContext context ){
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Container Colorchange App"),
        centerTitle: true,
        backgroundColor: colorChange? Colors.red:Colors.black,

      ),
      body: 
        Center(
          child:Container(
            height:700,width: 700,
            color: colorChange?Colors.blue:Colors.yellow,

          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
           if(colorChange==true){
            colorChange=false;

           }else{
            colorChange=true;
           }
          setState((){});
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}