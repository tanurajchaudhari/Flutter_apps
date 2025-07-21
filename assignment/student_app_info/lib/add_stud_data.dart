import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_app_info/get_data.dart';

class AddStudData extends StatefulWidget{
  const AddStudData({super.key});
  @override  
  State<AddStudData>createState()=>_AddStudDataState();

}

class _AddStudDataState extends State<AddStudData> {
  TextEditingController collegecontroller=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController coursecontroller=TextEditingController();

  Map CourseData={};
  bool isOffline=true;  

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("C2w Student"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller:nameController,
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  border:OutlineInputBorder(),


                ),

              ),
              const SizedBox(height: 20,),
              TextField(
                controller: collegecontroller,
                decoration: const InputDecoration(
                  hintText: "Enter your College Name",
                  border: OutlineInputBorder(),

                ),
              ),
              const SizedBox(height:20,),
              Expanded(
                flex:0,
                 child: Text("Enroolled Courses:$CourseData"),
                
              ),
              const SizedBox(height:20,),
              TextField(
                controller: coursecontroller,
                decoration: const InputDecoration(
                  hintText: "Enter your Course Name",
                  border: OutlineInputBorder(),

                ),
              ),
              const SizedBox(height:20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      isOffline=true;
                      setState((){});
                    },
                     style: ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(
                        isOffline==true?Colors.blue:Colors.white,
                      ),
                     ),
                     child:const Text("Offline"),
                     
                     ),      
                  ElevatedButton(
                    onPressed: (){
                      isOffline=false;
                      setState((){});
                    },
                     style: ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(
                        isOffline==false?Colors.blue:Colors.white,
                      ),
                     ),
                     child:const Text("Online"),
                     
                     ),


                ],
              ),

              const SizedBox(height:20,),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    if(coursecontroller.text.isNotEmpty){
                      String mode="";
                      if(isOffline){
                        mode="Offline";
                      }else{
                        mode ="Online";
                      }
                      CourseData[coursecontroller.text]=mode;
                      coursecontroller.clear();
                      setState((){});

                    }
                  },
                   child: const Text("Add Course"),
                   ),
              ),
              const SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed:()async{
                        if(nameController.text.trim().isNotEmpty
                        &&collegecontroller.text.trim().isNotEmpty
                        &&CourseData.isNotEmpty){
                          Map<String,dynamic>data={
                            "studName":nameController.text,
                            "collegeName":collegecontroller.text,
                            "enrolledCourses":CourseData,

                          };
                          DocumentReference docRef=await FirebaseFirestore
                          .instance.collection("C2WStudentInfo").add(data);
                          nameController.clear();
                          collegecontroller.clear();
                          CourseData={};
                          setState((){});
                          log("DocRef : $docRef");

                          

                        }
                      
                    } ,
                     child: const Text("Add Data"),
                     ),
                     ElevatedButton(
                      onPressed: () 
                     {Navigator.of(context)
                     .push(MaterialPageRoute(builder:(context){return const GetData();
                     },
                     ),
                     );

                     },
                     child: const Text("Get Data"),
                     ),

                ],
              ),               

            ],
          ),
        ),


      ),
    );

  } 

}