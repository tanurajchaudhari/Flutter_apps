import 'package:flutter/material.dart';

class insuline_ui extends StatefulWidget {
  const insuline_ui({super.key});
  @override
  State createState() => _insuline_ui();
}

class cardscalss {
  int? beforesugar;
  cardscalss({
    this.beforesugar,
  });
}

class _insuline_ui extends State {
  // controllers
  //morning
  TextEditingController beforeBreakfastSugar = TextEditingController();
  TextEditingController afterBreakFastSugar = TextEditingController();
  //lunch
  TextEditingController beforeLunchSugar = TextEditingController();
  TextEditingController afterLunchSugar = TextEditingController();
  // Dinner
  TextEditingController beforeDinnerSugar = TextEditingController();
  TextEditingController afterDinnerSugar = TextEditingController();
  double? isr;
  double? isrval;
  List<cardscalss> cards = [];
  List cardColorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  double calculatISRRatio(){

   }
   void calculateisrinsuline(int sugar){
           int val=sugar-120;
           isrval=val/tdd;
            
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Insuline intake management",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: cardColorList[index % cardColorList.length],
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Text("Morning"),
                        ),
                        Column(
                          children: [
                            Text(
                              "Enter the sugar before breakfast",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: beforeBreakfastSugar,
                              keyboardType:
                                  TextInputType.number, // Numeric keyboard
                              onSubmitted: (value) {
                                int? beforeBreakfastSugar =
                                    int.tryParse(value); // Convert to integer
                                if (beforeBreakfastSugar != null) {
                                  // call function of  insuline calculation
                                  calculateisrinsuline(beforeBreakfastSugar);

                                  // Valid integer
                                  print("You entered: $beforeBreakfastSugar");
                                } else {
                                  // Invalid input
                                  print("Please enter a valid integer!");
                                }
                              },
                              decoration: InputDecoration(
                                labelText: "Enter a sugar",
                                hintText: "e.g., 123",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text("required insuline is $v"),
                            ),

                            ElevatedButton(
                              onPressed: () {
                                print("add diet");
                              },
                              style: ElevatedButton.styleFrom(
                                //primary: Colors.blue, // Background color of the button
                                //onPrimary: Colors.white, // Text color of the button
                                elevation: 5, // Shadow depth of the button
                                shadowColor: Colors.grey, // Color of the shadow
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Rounded corners
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 12), // Padding inside the button
                              ),
                              child: Text(
                                "diet",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold), // Text style
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showBottomSheet(false);
          //calculatetotaldailydose;
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1.0),
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}
