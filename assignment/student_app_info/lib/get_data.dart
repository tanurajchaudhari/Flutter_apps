import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class GetData extends StatefulWidget{
  const GetData({super.key});
  @override  
  State<GetData>createState()=>_GetDataState();
}
class _GetDataState extends State<GetData>{
  List studentData=[];
  @override
  void initState(){
    super.initState();
    fetchData();
  }
  void fetchData()async{
    QuerySnapshot response=await FirebaseFirestore
    .collection("C2WStudentInfo").get();

    log("Response : ${response.docs}");
    studentData=response.docs;
    setState((){});

  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
            appBar: AppBar(
              title: const Text("Get Data"),
              centerTitle: true,
              backgroundColor: Colors.blue,

            ),
            body:ListView.builder(
              itemCount: studentData.length,

              itemBuilder:(context,index){
                return GestureDetector(
                  onTap: (){
                    child:Container(
                      padding: const EdgeInsets.all(10),
                      margin:const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),

                      ),
                    );
                  },

                );
              })
    );
  }
}