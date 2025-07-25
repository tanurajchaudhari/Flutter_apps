import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/register_view.dart';
import 'package:mynotes/views/verify_email_view.dart';
import 'firebase_options.dart';
import 'dart:developer' as devtools show log;
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
      "/login": (context) => const LoginView(),
      "/register": (context) => const RegisterView(),
    },
  ));
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
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return const NotesView();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView();
            }

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

enum MenuAction { logOut }


class NotesView extends StatefulWidget {
  const NotesView({super.key});
  @override
  State createState() => _NotesViewState();
}

class _NotesViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main UI "),
        actions: [
          PopupMenuButton<MenuAction>(
              onSelected: (value)async {
                switch(value){

                  case MenuAction.logOut:
                    final shouldlogout=await showLogOutDialog(context);

                    if(shouldlogout){
                      await FirebaseAuth.instance.signOut();
                     
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushNamedAndRemoveUntil("/login", (_)=>false);
                    }
                    devtools.log(value.toString());
                    break;
                }
                
                
              },
              itemBuilder: (context) {
               return const [
                  PopupMenuItem(
                    value: MenuAction.logOut,
                    child: Text("Log  Out")
                    ),
                  
               ];
              }
              )
        ],
      ),
      body: const Text("Heloo world ...  "),
    );
  }
}
 
 Future<bool>showLogOutDialog(BuildContext context){
   return showDialog<bool>(
    context: context,
     builder: (context){
        return   AlertDialog(
          title:const Text("Sign Out "),
          content: const Text("Are you sure want to SIGN OUT"),
          actions: [
            TextButton( onPressed: () { 
              Navigator.of(context).pop(false);
            },
            child:  const Text("Cancel")
            ),
             TextButton( onPressed: () { 
              Navigator.of(context).pop(true);
             },
            child:  const Text("LogOut")
            ),
          ],
        );
     }
     ).then((value) => value??false); 

 }
