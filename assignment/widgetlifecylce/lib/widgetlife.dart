

import 'dart:developer';

import 'package:flutter/material.dart';

import 'Screen2.dart';

class Widgetlife extends StatefulWidget{
    const Widgetlife({super.key});
@override  
State createState()=>_Widgetlife();
}

class _Widgetlife extends State{
  String str="c2w";
  @override
  Widget build(BuildContext context) {
    log("in widgetlifcylcebuild page");
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Screen1"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
                        context,
                    MaterialPageRoute(
                 builder: (context) => Screen2(text:str,  ),
                ),
                );
          

        }
        
      
      
      ),


    );
  
  }
  @override
  void initState() {
    // TODO: implement activate
    super.initState();
    log("in initState()");
  }
  @override  
  void didChangeDependencies(){
    super.didChangeDependencies();
    log("in didchangesDependencies ()");

 

  }
  @override 
  void 
  @override  
  void dispose(){
    log("in dispose")';'
  }
  
}