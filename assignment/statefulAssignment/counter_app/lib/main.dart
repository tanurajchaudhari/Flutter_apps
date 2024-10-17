import'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build (BuildContext context ){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CounterApp(),
    );
  }

}
class CounterApp extends StatefulWidget{
  const  CounterApp({super.key});
  @override  
  State createState()=> _CounterAppState();
} 
class _CounterAppState extends State{
  int count=0;
   @override  
   Widget build(BuildContext context ){
        return Scaffold(
          appBar: AppBar(
            title:const Text("CounterApp"),
            centerTitle: true,
            backgroundColor: Colors.pink,

          ),
          body: 
             Center(
              child: Text("$count",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:const Color.fromARGB(255, 4, 4, 3)),),
             ),
             floatingActionButton: FloatingActionButton(onPressed: (){
                 count++;
                 setState((){});

             },
             child: const Icon(Icons.add),
             ),
             
        );
  }
  
}