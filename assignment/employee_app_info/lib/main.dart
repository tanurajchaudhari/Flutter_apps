
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:const FirebaseOptions(
    apiKey: "AIzaSyB_zwLk_3BNfYljzX_WPUXZCMtVWrAQvA", 
  appId: "1:206184265534:android:98f0fbd964e49416089e6f", 
  messagingSenderId:   "206184265534",
 projectId: "ployeeinfo") );
  runApp(const MainApp());



}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Firebase1(),
    );
  }
}
class Firebase1 extends StatefulWidget {
  const Firebase1({super.key});


  @override
  State createState() => _FirebaseState();
}

class _FirebaseState extends State{
  TextEditingController empName=TextEditingController();
  TextEditingController empSal=TextEditingController();
  TextEditingController devType=TextEditingController();
  void clearController(){
   empName.clear();
   empSal.clear();
   devType.clear();
  

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Firebase service "),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:  Padding(
        
        padding: const  EdgeInsets.all(10.0),
        child: Column(
          children: [
             TextField(
              controller: empName,
              decoration: const InputDecoration(
                hintText: "Enter your name ",
                border: OutlineInputBorder(),
                

              ),
              

              
            ),
            const SizedBox(height: 15),
             TextField(
            controller: empSal,
              decoration:const InputDecoration(
                hintText: "enter your salary ",
                border: OutlineInputBorder(),
                
                

              ),
              

              
            ),
            const SizedBox(height: 15),
            TextField(
              controller: devType,
              decoration: const InputDecoration(
                hintText: "Enter your dev type  ",
                border: OutlineInputBorder(),
                
                

              ),
              

              
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: ()async {
                Map<String,dynamic> data={
                  "empName":empName.text,
                  "empSal":empSal.text,
                  "devType":devType.text,
              };
               await FirebaseFirestore.instance.collection("EmployeeData").add(data);
               clearController();
               setState(() {});
              



              },

              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: const Text("Add Data"),


              ),
            ),

            const SizedBox(height: 15),
            GestureDetector(
              onTap: ()async{
              QuerySnapshot response  = await FirebaseFirestore.instance.collection("EmployeeData").get();
              log("Length:${response.docs.length}" as num);
              for(dynamic val in response.docs){
                log("value: ${val.data()["empDal"]}" as num );
              }
             
              },

              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: const Text("Get Data"),


              ),
            ),




          ],
        ),
      ),
    );
  }
}

