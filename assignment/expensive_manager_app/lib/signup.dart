import 'package:expensive_manager_app/addmain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State createState() => _SignupScreenState();
}

class _SignupScreenState extends State {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/splash.png"),
                )
              ],
            ),
            const SizedBox(
              height: 75,
            ),
            Text(
              "Create your Account",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(height: 35),
            Container(
              height: 49,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: const Offset(1, 3)),
                  ]),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  /* focusedBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)
                        )*/
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 49,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: const Offset(1, 3)),
                  ]),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  /* focusedBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)
                        )*/
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 49,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: const Offset(1, 3)),
                  ]),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  /* focusedBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)
                        )*/
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 49,
              width: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: const Offset(1, 3)),
                  ]),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  /* focusedBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)
                        )*/
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addScreen()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  fixedSize: const Size(280, 49),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  ),
              child: Container(
                height: 23,
                width: 51,
                child: Center(
                    child: Text(
                  "Sign In",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
