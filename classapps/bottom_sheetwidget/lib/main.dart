import"package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context){
   
   return const MaterialApp(
    title:"bottom sheet",
    home: Myhomepage(),

   );
  }
}
class Myhomepage extends StatefulWidget{
    const Myhomepage({super.key});

    @override  
    State<Myhomepage> createState() => _MyhomepageState();

  
}

class _MyhomepageState extends State<Myhomepage>{
  void openBottomSheet(){
     showModalBottomSheet(
      context: context, builder: (context){
        return   Column(
          children: [
             const Text("Bottom Shett open",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),

            ),
            Container(
              height: 200,
              color: Colors.pink ,
            ),

          ],
         
        );

      }
      );
  }

   @override
   Widget  build (BuildContext context ){

         return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title:const Text("BottomSheet "),
          ),
          body: const Center(
            child: Text("BottomShett Demo",
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              openBottomSheet();
            
            },
            child: const Icon(Icons.add), 
            ),
         );

   }

}