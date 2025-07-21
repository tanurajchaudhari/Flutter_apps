import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:api_binding/getalldata.dart';

class  api_home extends StatefulWidget{
    const api_home({super.key});

    @override  
    State createState()=>_api_home();


}
class _api_home extends State{
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Binding",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: AutofillHints.addressCity,),
        

      ),
      centerTitle: true,
      backgroundColor: Colors.yellow,

    ),
    backgroundColor: const Color.fromARGB(255, 237, 140, 140),
    body:  Padding(
      padding:  const EdgeInsets.symmetric(vertical:200,horizontal:25),
      child:  Column(
      
        children: [
          Row(widgetlifecyle
            children: [
              GestureDetector(
                onTap: (){
                  Navigator
                },
                child: Container(
                  height: 150.0, 
                  width: 150.0,  
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const Color.fromARGB(255, 33, 243, 201),
                
                  ),
                  child: const Center(
                    child: Text("Get Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
              const SizedBox(width: 48,),
              GestureDetector(
                onTap:(){},
                child: Container(
                  height: 150.0, 
                  width: 150.0,  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color.fromARGB(255, 162, 244, 230),
                
                  ),
                  child: const Center(
                    child: Text("Post Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),

              

              
               
              
      
            ],
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              GestureDetector(
                onTap: (){},

                child: Container(
                  height: 150.0, // Set the height of the container
                  width: 150.0,  // Set the width of the container
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const Color.fromARGB(255, 33, 215, 243),
                
                  ),
                  child: const Center(
                    child: Text("Update Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                  ),
                ),
              ),
              const SizedBox(width: 48,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 150.0, // Set the height of the container
                  width: 150.0,  // Set the width of the container
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color.fromARGB(255, 143, 230, 244),
                
                  ),
                  child: const Center(
                    child: Text("Delete Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
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