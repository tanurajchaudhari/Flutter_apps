

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
 
  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mycart(),
    );
  }
}
 class Mycart extends StatefulWidget{
    const Mycart({super.key});

    @override  
    State createState()=> _MycartState();
 }
 class _MycartState extends State{
  int add=1;
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cart",style: TextStyle(
          color: Color.fromARGB(251, 58, 86, 245),
          fontWeight: FontWeight.w500,

         ),
        ),
        leading: const Icon(Icons.arrow_back_ios_new_outlined,color:Color.fromARGB(251, 58, 86, 245),
      ),
    bottom: PreferredSize(
    preferredSize: Size.fromHeight(10.0), // The height of the bottom border
    child: Container(
      color: Colors.black, // Color of the border
      height: 0.8, // Thickness of the border
    ),
  ),
    ),
     
    // const  SizedBox(height: 10,)
    body:
    
    

    
      Padding(
        padding: const EdgeInsets.all(10.0),
        
        //main column
        child: Column(
          
          children: [
            //internal column
            
            Column(
              children: [
                //first card
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 249, 236, 236),
                    borderRadius: BorderRadius.circular(15),
        
                    ),
                   child:  Row(
                    
                        children: [ 
                        
                         Padding(
                          
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                            height: 150,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
        
                            child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                            fit: BoxFit.cover,
                            )
                            ),
                            
                         ),
                          Padding(
                          padding:  const EdgeInsets.all(10.0) ,
                          child:
                            Container(
                            height: 150,
                            width: 150,
                            margin:const  EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Nike shoes",style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.w500,
                                ),
                                ),
                               const  Text("With iconic style and legendary confort,on repeat.",
                                ),
                               const   SizedBox(height: 20,),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("\$570.0",
                                    style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                    
                                   Row(
                                      children: [
                                          const Icon(Icons.remove),
                                          Container(
                                            height: 25,
                                            width: 30,
                                            decoration:  BoxDecoration(
                                             border: Border.all(color: Colors.black,
                                             ),
                                             borderRadius: BorderRadius.circular(5),
        
                                            ),
                                           child:  Center(
                                            child: Text("$add"),
        
                                           ),
                                          
                                          ),
                                          // const SizedBox(width:50,),
                                          const Icon(Icons.add), 
                                        
        
                                         
                                         
        
                                      ],
                                    )
                                  ],
                                 )
                              ],
                            ),
                          ),
        
                         )
                          
                          ]
                    ),
                ),
                const SizedBox(height: 20,),
        
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 249, 236, 236),
                    borderRadius: BorderRadius.circular(15),
        
                    ),
                   child:  Row(
                    
                        children: [ 
                        
                         Padding(
                          
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                            height: 150,
                            width: 150,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
        
                            child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                            fit: BoxFit.cover,
                            )
                            ),
                            
                         ),
                          Padding(
                          padding:  const EdgeInsets.all(10.0) ,
                          child:
                            Container(
                            height: 150,
                            width: 150,
                            margin:const  EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Nike shoes",style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.w500,
                                ),
                                ),
                               const  Text("With iconic style and legendary confort,on repeat.",
                                ),
                               const   SizedBox(height: 20,),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("\$570.0",
                                    style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.w500,
                                    ),
                                    ),
                                    
                                   Row(
                                      children: [
                                          const Icon(Icons.remove),
                                          Container(
                                            height: 25,
                                            width: 30,
                                            decoration:  BoxDecoration(
                                             border: Border.all(color: Colors.black,
                                             ),
                                             borderRadius: BorderRadius.circular(5),
        
                                            ),
                                           child:  Center(
                                            child: Text("$add"),
        
                                           ),
                                          
                                          ),
                                          // const SizedBox(width:50,),
                                          const Icon(Icons.add), 
                                        
        
                                         
                                         
        
                                      ],
                                    )
                                  ],
                                 )
                              ],
                            ),
                          ),
        
                         )
                          
                          ]
                    ),
                ),
              ],
            ),
            const Spacer(),
           Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              
              child: Row(
                
                  children: [
                    Container(
                      child: const Text("Subtotal: "),
                      // color: const Color.fromARGB(255, 234, 224, 224),
                      
                    ),
                    Spacer(),
                    Container(
                      child: const Text("\$800.00",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
              
                  ],
                    
              ),
            ),
            SizedBox(height: 10,),
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                
                 child: Row(
                  children: [
                    Container(
                      child: const Text("Delivery Fee:"),
        
                    ),
                    Spacer(),
                    Container(
                      child: const Text("\$5.00",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                 ),
            ),
        
            SizedBox(height: 10,),
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                
                 child: Row(
                  children: [
                    Container(
                      child: const Text("Discount :"),
        
                    ),
                    Spacer(),
                    Container(
                      child: const Text("40.0%",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                 ),
            ),
            SizedBox(height: 20,),
             Container(
               height: 50,width: 340,
                    // color: const Color.fromARGB(255, 45, 159, 252),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 33, 96, 243),
                    ),
               child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   height: 50,width: 340,
                  //   // color: const Color.fromARGB(255, 45, 159, 252),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(30),
                  //     color: const Color.fromARGB(255, 33, 96, 243),
                  //   ),
                    
                     Center(
                      child:   Text("Checkout for ",
                      style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                      
                      ),
                      
                      
                    ),
                    Text("₹480.00",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),)
               
                  // ),
        
                  
                ],
                         ),
             ),
            const SizedBox(height: 20,),
          ],
        
        
          ),
        
          
          
          
         
        
          ],
            // ),
            )
            ),
      ),
    );

  }
 }