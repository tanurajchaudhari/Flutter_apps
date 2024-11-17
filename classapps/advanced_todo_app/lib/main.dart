import"package:flutter/material.dart";
import"package:google_fonts/google_fonts.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  
  const MyApp({super.key});

   @override  
   Widget build(BuildContext context){
     
     return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: advance_todo(),
     );

   }

}
class advance_todo extends StatefulWidget{
 const advance_todo({super.key});
  @override 
   State createState()=>_advance_todoState();
   
}
class _advance_todoState extends State{
  
  @override 
  Widget build(BuildContext context ){
    return const Scaffold(
      backgroundColor:  Color.fromRGBO(111, 81, 255, 1),
    
    body: Padding(
      padding: EdgeInsets.only(top: 45,left:29),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Good Morning",),
          SizedBox(height: 15,),
          Text("Pathum"),
        ],
      
      ),
    ),
            
          
          
        
       

      );
    
  }
}