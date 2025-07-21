import 'package:flutter/material.dart';


class homePage extends StatefulWidget{
  const homePage({super.key});

  @override  
  State createState()=>_homePageState();
} 
class _homePageState extends State{
  @override  
  Widget build (BuildContext Context ){
    return  Scaffold(
     
     body: Padding(
       padding: const EdgeInsets.all(25),
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                 Image.asset("assets/images/Menu.png"),
                 const Spacer(),
                 Image.asset("assets/images/Profile.png"),
            
              ],
              
                   
            ),
          ),
          const SizedBox(height: 10,),
          const Text("Exploral",style:GoogleFonts.imprima(
            
          ),
          
          )



       
        ],
       
       ),
     ),
     
    );
  }
}