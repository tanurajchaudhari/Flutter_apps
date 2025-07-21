import 'package:flutter/material.dart';

class getalldevicedata extends StatefulWidget{
  List devicedata=[];
    getalldevicedata({super.key,required this.devicedata});
    @override  
    State createState()=>_getalldevicedataState();
   

}

class _getalldevicedataState extends State {
  @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: const Text("All Device Data"),
      backgroundColor: Colors.amber,
      centerTitle: true,
      

    ),
   );


  }
}