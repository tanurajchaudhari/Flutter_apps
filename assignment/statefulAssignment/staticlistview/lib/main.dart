import"package:flutter/material.dart";
void main(){
     runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override  
  Widget build(BuildContext context){
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Static ListVIew Demo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network("https://publish.one37pm.net/wp-content/uploads/2024/01/rko-mobile.jpg",),
            const Icon(
              Icons.favorite,color:Colors.red,


            ),
            const Text("Bari",style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
            ),),
            Image.network("https://www.pwmania.com/wp-content/uploads/2024/08/01-randy-orton-top-rope-pose.jpg",),
            GestureDetector(
              onTap:(){
                print("Button pressed");
              },
              child:Container(
                height: 500,
                color: Colors.amber,
                child: const Text("Prexx me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}