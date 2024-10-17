import "package:flutter/material.dart";
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override  
  Widget build(BuildContext context ){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Column scroll demo",style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          
        ),
        body: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,width:200,color:Colors.amber,

                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSiCCUhL9jPqEpKGkiJV6AwuM1uop8STpJ8Q&s",fit: BoxFit.cover,)),
              Container(
                height: 200,width:200,color:Colors.amber,

              ),
              Container(height: 200,width:200,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Randy_Orton_Tribute_to_the_Troops_2010_crop.jpg/170px-Randy_Orton_Tribute_to_the_Troops_2010_crop.jpg",fit: BoxFit.cover,)),
             Container(
                height: 200,width:200,color:Colors.amber,

              ),
              Container(
                height: 200,width:200,
                child: Image.network("https://media.gettyimages.com/id/85828968/photo/houston-randy-orton-makes-his-way-to-the-ring-for-his-match-with-triple-h-for-the-wwe.jpg?s=612x612&w=gi&k=20&c=zhdHZTgG6Rs4PaPU214WvlEDfu7B9Os8vzYpjf7kwpo=",fit: BoxFit.cover,)),
              Container(
                height: 200,width:200,color:Colors.amber,

              ),
            ],
          ),
        ),
      ),
    );
  }

}