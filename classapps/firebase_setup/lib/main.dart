import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '';
void main(){
  
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
      runApp(const MyApp());



}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title:"Firebase App",
      home: const PlayerScreen(),
     );

  }
}
class PlayerScreen extends StatefulWidget{
   const PlayerScreen({super.key});


 @override   
  State <PlayerScreen> createState()=> _PlayerScreenState();


}  
class _PlayerScreenState extends State<PlayerScreen>{
   TextEditingController PlayernameTextController =TextEditingController();
   TextEditingController jerseyNoTextcontroller =TextEditingController();



    @override
    Widget build(BuildContext context){
       return Scaffold(
         backgroundColor: Colors.black,
         appBar:AppBar(
          title: const Text("Firebase Player App",
           style: TextStyle(
            fontSize: 25,
           ),

          ),
          centerTitle: true,
          backgroundColor:Colors.blue,

         ),
         body:Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.all(10.0),
             child:TextField(
              controller:PlayernameTextController,
              Style: TextStyle()
             ),

            )
          ],
         ),
       );



    }


}
