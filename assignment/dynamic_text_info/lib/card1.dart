import"package:flutter/material.dart";
class CardMaker{
    Container createCard(String? username,String? compname){
          return Container(
            margin:const EdgeInsets.all(8),
            height: 100,width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 243, 213, 213)
            ),
            child: Column(
              children: [
                const SizedBox(height: 15,),
                Text("Name: $username",style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 10,),
                Text("Company name : $compname",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          );
    }
  
}