
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: To_Do_List(),
    );
  }
}

class To_Do_List extends StatefulWidget {
  const To_Do_List({super.key});

  @override
  State<To_Do_List> createState() => _To_Do_ListState();
}

class _To_Do_ListState extends State<To_Do_List> {
  List<Color> colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-do list",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 15,
          ),
          child: ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  decoration: BoxDecoration(color: colorList[index % colorList.length], borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              child: SvgPicture.asset(
                                "assets/images/svg/center image.svg",
                                height: 24,
                                width: 20,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply setting industry. ",
                                  style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                  )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                    width: 260,
                                    // height: 44,
                                    child: Text(
                                      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color.fromRGBO(84, 84, 84, 1)),
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("10 July 2024",
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(132, 132, 132, 1),
                                  ),
                                )),
                            const Spacer(),
                            const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
