import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/register_view.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const HomePage(),
      routes: {
        "/login":(context)=> const LoginView(),
        "/register":(context)=> const RegisterView(),
      },
      
      )
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              // print(FirebaseAuth.instance.currentUser);
              // final user = FirebaseAuth.instance.currentUser;
              // print(user);

              // if (user?.emailVerified ?? false) {
              //   return const Text("Done");
              // } else {
              //   return const VerifyEmailView();
              // }
              return const LoginView();
            //return const RegisterView();

            default:
              return const CircularProgressIndicator();
          }
        },
      );
  }
}
