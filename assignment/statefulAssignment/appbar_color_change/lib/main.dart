import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override  
  Widget build(BuildContext context ){
    return const MaterialApp(
      title:"AppBar Color Change ",
      debugShowCheckedModeBanner: false,
      home:AppBarColorchange(),
    );
  }
}
 class AppBarColorchange extends StatefulWidget {
  const AppBarColorchange({super.key});
   @override     
   State createState()=>_AppBarColorchange();
 }
 class _AppBarColorchange extends State{
  bool colorchange=true;

  @override
  
  
  Widget build(BuildContext context ){
    return Scaffold (
      appBar: AppBar(
        title:const Text("AppBar Color Change",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
        backgroundColor: colorchange? Colors.black:Colors.blue,

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(colorchange==true){
          colorchange=false;
        }else{
          colorchange=true;
        }
        setState((){});
      },
     child: const  Icon(Icons.add)
      ),
    );
  }
 }