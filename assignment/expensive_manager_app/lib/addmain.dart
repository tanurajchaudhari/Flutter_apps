import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class addScreen extends StatefulWidget {
  const addScreen({super.key});
  @override
  State createState() => _addScreen();
}

class _addScreen extends State {
  var img = "assets/medicineIcon.png";
  TextEditingController DateController= TextEditingController();

void showBottomSheet(){
  showModalBottomSheet(isScrollControlled: true,context: context, builder: (context){
    return Padding(
      padding:EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 12.0,right: 12.0,left: 12.0,
      ), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Date",style: GoogleFonts.poppins(
            fontSize: 13,fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 4,),
          Container(
            height: 36,width: 316,
          // color: Colors.amber,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,

            ),
            child: TextField(
              controller: DateController,
              decoration: InputDecoration(
                hintText: "   01-11-2024",
                border: InputBorder.none,
              ),
              
              
              
            ),
          ),
          const SizedBox(height: 10,),
          Text("Amount",style: GoogleFonts.poppins(
            fontSize: 13,fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 4,),
                    Container(
            height: 36,width: 316,
          // color: Colors.amber,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,

            ),
            child: TextField(
              controller: DateController,
              decoration: InputDecoration(
                hintText: "   900",
                border: InputBorder.none,
              ),
              
              
              
            ),
          ),
          const SizedBox(height: 10,),
          Text("Category",style: GoogleFonts.poppins(
            fontSize: 13,fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 4,),
          Container(
            height: 36,width: 316,
          // color: Colors.amber,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,

            ),
            child: TextField(
              controller: DateController,
              decoration: InputDecoration(
                hintText: "   Shopping",
                border: InputBorder.none,
              ),
              
              
              
            ),
          ),
                    const SizedBox(height: 10,),
          Text("Category",style: GoogleFonts.poppins(
            fontSize: 13,fontWeight: FontWeight.w400,
          ),),
          const SizedBox(height: 4,),
          Container(
            height: 36,width: 316,
          // color: Colors.amber,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,

            ),
            child: TextField(
              controller: DateController,
              decoration: InputDecoration(
                hintText: "   lorem ipsum is simply dummy text of the ",
                border: InputBorder.none,
              ),
              
              
              
            ),
          ),
          const SizedBox(height: 15,),
          Center(
            child: Container(
              width: 123,height: 40,
              //color: Color.fromRGBO(14, 161, 125, 1),
              decoration: BoxDecoration(
                color: Color.fromRGBO(14, 161, 125, 1),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(
                child: Text("Add",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 255, 255, 1)
                ),),

              ),

            ),
          ),
          const SizedBox(height: 15,),


        ],

      ),
    
    );

  }
  );


}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
          vertical: MediaQuery.of(context).size.height * 0.04,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width *
                    0.0667, // 80% of screen width
                height: MediaQuery.of(context).size.height * 0.02996,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/humbergericon.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 25,
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.02996,
              // ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Change item count as needed
              shrinkWrap: true, // ✅ Takes only required space
              physics:
                  NeverScrollableScrollPhysics(), // ✅ Prevents scrolling conflicts
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    // margin: EdgeInsets.symmetric(vertical: 1), // ✅ Adds spacing between items
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.0386,
                              //height: 44,
                              //width: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //color: Colors.black,
                              ),

                              child: ClipOval(
                                child: Image.asset(
                                  "$img",
                                  fit: BoxFit.cover,
                                ),
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
                                    "Medicine",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "vxhdbhvlbhdvisjvbdbckx ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // const SizedBox(width: 5,),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(246, 113, 49, 1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 9,
                                        height: 4,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                204, 210, 227, 1)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("500"),
                              ],
                            ),
                          ]),
                          // const SizedBox(width: 10,),
                          // Text("tanuraj ")
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              "3 June | 11:50 AM",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          height: 46,
          width: 180,
           //color: Color.fromRGBO(255, 255, 255, 1),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: FloatingActionButton(
            onPressed: () {
              showBottomSheet();
              // Action when FAB is pressed
            },
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),

             
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/addtransaction2.png",
                    ),
                  ),
                ),
                const SizedBox(width: 7,),
                Text("Add Transaction",style: GoogleFonts.poppins(
                  fontSize: 12,fontWeight: FontWeight.w400,
                ),),
              ],
            ),
          ),
        ),
      ),

      // ✅ Positioning FAB at Bottom Center
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
