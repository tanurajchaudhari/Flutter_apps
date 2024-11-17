import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  @override
  State createState() => _TodoState();
}

class _TodoState extends State {

void showMyb () {

  

}


  List listcolors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: listcolors[index % listcolors.length],
                   borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              color: const Color.fromARGB(255, 239, 207, 207),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/image.png",
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply setting industry. ",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    // color: const Color.fromARGB(0, 0, 0, 1),
                                    color: const Color.fromRGBO(0, 0, 0, 1)
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  style: GoogleFonts.quicksand(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(84, 84, 84, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10.0,),
                        child: Row(
                           children: [
                            Text("10 jully 2024",style: GoogleFonts.quicksand(fontSize: 10,fontWeight: FontWeight.w500,color: const Color.fromRGBO(132,132,132,1),
                            ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: const Icon(Icons.edit,color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                GestureDetector(
                                  onTap: (){},
                                  child: const Icon(Icons.delete,color: Color.fromRGBO(0, 139, 148, 1),),
                                ),
                              ],

                            ),

                            
                           ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor:const  Color.fromRGBO(0, 139, 148, 1),
            onPressed:(){
                
            },
            child: const Icon(
              size:50,
              Icons.add,
              color: Colors.white,
            ),
            ),
    );
  }
}
