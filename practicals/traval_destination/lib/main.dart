import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build (BuildContext context ){
    return const MaterialApp(
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );

  }
}
class Screen1 extends  StatefulWidget{
  const Screen1({super.key});

  @override  
  State createState() =>_Screen1State();

}
class _Screen1State extends State{
  @override  
  Widget build (BuildContext context ){
     return Scaffold(
      appBar: AppBar(
          title: Container(
            height: 120,width: 360,
            alignment: Alignment.center,

            
            child: const   Text("Where do you want to travel?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),) ,
            backgroundColor:const Color.fromRGBO(27,48,101,1) ,centerTitle: true,
      ),
      body:  Padding(padding:EdgeInsets.all(25),
           child :Column(
            

            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(

                      child: Container(
                        // alignment: Alignment.center,
                        // width: 253,height: 41,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromRGBO(233,237,248,1)),
                      
                        padding:const  EdgeInsets.only(bottom: 16),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 253,height: 41,
                              
                              child: const Text("Select Destination",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color.fromRGBO(52, 111, 249, 1)),)),
                          ],
                        ),
                          
                      ),
                    ),
                  ],
                ),

           
            ],

           ),
      
      ),
     );

  }
}