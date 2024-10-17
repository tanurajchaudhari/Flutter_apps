
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import'package:dynamic_text_info/card1.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});


  @override  
  Widget build (BuildContext context){
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myinfo(),
    );

  }
}
class Myinfo extends StatefulWidget{
  const Myinfo({super.key});
  @override  
  
  State createState()=>_MyinfoState();


}
class _MyinfoState extends State{

  List<Map>userinfo=[];
  TextEditingController nameController=TextEditingController();
  TextEditingController compController=TextEditingController();
  String? username;
  String?compname;

  
  @override  
  Widget build (BuildContext  context ){
    return Scaffold( 
        appBar: AppBar(centerTitle: true ,
        backgroundColor: Colors.blue,
          title: const Text("MyInfo ",style: TextStyle(color: Colors.white,fontSize: 22,),),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(20),

               child: Column(
                
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 45,width: 250,
                      
                      decoration:const  BoxDecoration(color: Colors.white,),
                    
                      child:  TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                    
                          hintText: "Name ",
                          border: OutlineInputBorder(),
                    
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(height: 20,),
                 Center(
                  child: Container(
                    height: 45,width: 250,
                    decoration: const BoxDecoration(color: Colors.white),
                    child:  TextField(
                      controller: compController,
                      decoration: const InputDecoration(
                        hintText: "Dream company",
                        border:OutlineInputBorder(),

                      ),

                    ),

                  ),
                  ),
                  const SizedBox(height: 50,),


                  GestureDetector(
                    onTap: () {
                      username=nameController.text;
                      compname=compController.text;
                      userinfo.add(
                        {"username":username,"cmpname":compname}
                      );
                      setState(() {
                        nameController.clear();
                        compController.clear();

                      });
                    },

                    
                   child : Container(
                        height: 55,width: 200,
                        decoration:  BoxDecoration( 
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child:const Center(
                        child:  Text("Submit ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                        )
                      ),
                    ),
                  
                    const SizedBox(height: 45,),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(14),
                        shrinkWrap: true,
                        itemCount: userinfo.length,
                        itemBuilder: (context,index){
                         return CardMaker().createCard(userinfo[index]["username"], userinfo[index]["cmpname"]);

                        },

                      ),
                    ),


                      
                ],
               ),
        
        ),

    );
    
  }

}