import 'package:expensive_manager_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  //bool signups=true;

  @override
  Widget build(BuildContext context) {
    // var usernameController;
    return Scaffold(
      backgroundColor: rgba(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/splash.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login to your Account",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 49,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 0.3, // Spread radius
                        blurRadius: 2,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 49,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 0.4, // Spread radius
                        blurRadius: 3,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                /*Container(height: 49,
                width: 280,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(14, 161, 125, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(""),

                ),


                ),*/
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      fixedSize: const Size(280, 49),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an accont? ",
                  style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400,
                    //color: const Color.fromRGBO(14, 161, 125, 1),
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen(),),);
                  },
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  rgba(int i, int j, int k, int l) {}
}
