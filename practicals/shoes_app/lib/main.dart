/*
impport "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
   @override  
   Widget build(BuildContext context)

}
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{

  const MyApp({super.key});
   @override  
   Widget build (BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ShoeApp(),

    );
   }
}

class ShoeApp extends StatefulWidget{
  const ShoeApp({super.key});
  @override  
  State createState()=> _ShoeAppState();
}

class _ShoeAppState extends  State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Shoes",
        style: TextStyle(
           fontSize:28,color: Color.fromARGB(255, 98, 176, 240)  
        ),),
      ) ,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          
          Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",),
        // Container(
        //     height: 295,width: 513,
            
        //     child:Image.network("srchttps://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
        //     fit: BoxFit.cover,
        //     )
        //   ),
          const SizedBox(height: 30,),
           Padding(
            padding:  EdgeInsets.all(20.0),
            child: Column(
            
              children: [
                 const Row(
                  children: [ SizedBox(width:10 ,),
                   Text("Nike Air Force 1 07 ",style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.w500,
                   ), )
                  ],
                ),
            
          
          const SizedBox(height: 15,),
          Row(
          children: [
            //  const SizedBox(width: 20,),
           Container(
            decoration:  BoxDecoration(
              color: const Color.fromARGB(255, 33, 75, 243),
              borderRadius: BorderRadius.circular(20),
            ),
            
            height: 40,width: 90,
            // color: const Color.fromARGB(255, 34, 148, 241),
            child:const  Center(
              child:  Text("SHOES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
            
           ),
           const SizedBox(width: 20,),
           Container(
            height: 40,width: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 33, 75, 243),
              borderRadius: BorderRadius.circular(20),
            ),
            // color: const Color.fromARGB(255, 34, 148, 241),
            child: const Center(child:  Text("FOOTWEAR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
           ),
          ],
          
        ),
        const SizedBox(height: 25,),
        const Text("With icon style and legendary comfort, the AF-1 was made to be  worn on repeat. this iteration puts a fresh spin on the  hoopsclassic with crisp leather,eraechoing '80s construction and reflective design Swoosh logos "),
        const SizedBox(height:45 ,),

         Row(
             children: [
              const Text("Quantity",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              const SizedBox(width: 10,),
             const  Icon(Icons.remove),
             const SizedBox(width: 10,),
              Container(
                height: 35,width: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: const Center(
                  child :Text("1"),
                ),
              ),
              const SizedBox(width: 10,),
              const Icon(Icons.add)


             ],
          ),
          const SizedBox(height: 120,),
          // Spacer(),
          Container(
            width: 380,
            height: 60,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 33, 75, 243),
            borderRadius: BorderRadius.circular(30),
          
            ),
            child: Center(child: Text("PURCHASE",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),)),
          ),
            ],
          ),
          ),
        ],
      ),
    );
  }
  

}
