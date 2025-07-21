import 'dart:developer';
import 'package:expensive_manager_app/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void Navigate(BuildContext context) {
    log("Inside SpalshScreen  Navigate method ");
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const Loginscreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    log("Inside SplashScreen  build method ");
    Navigate(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.1136,
            horizontal: MediaQuery.of(context).size.width * 0.13483),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            Container(
                height: MediaQuery.of(context).size.height * 0.4,
                // width: MediaQuery.of(context).size.width * 0.1797752809,
                width: 144,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(234, 238, 235, 1),
                ),
                child: Image.asset(
                  "assets/splash.png",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ]),
        ),
      ),
    );
  }
} 
   /*  Center(
            child: Image.asset("assets/splash.png",fit:BoxFit.cover),
          ),*/
