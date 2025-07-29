import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:mynotes/firebase_options.dart';
import "dart:developer" as devtools show log;

import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/utilities/show_error_dialogs.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Enter  your email",
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: "Enter  your password",
            ),
          ),
          TextButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  );

                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(notesroute, (route) => false);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'invalid-credential') {
                    showErrorDialog(
                      context,
                      "user Not Found",
                    );
                  } else if (e.code == 'wrong-password') {
                    showErrorDialog(
                      context,
                      "Wrong password",
                    );
                    //print(e.code);
                  } else if (e.code == 'invalid-email') {
                    showErrorDialog(
                      context,
                      "invalid-email",
                    );
                  } else {
                    showErrorDialog(
                      context,
                      "Error :- ${e.code}",
                    );
                  }
                } catch (e) {
                  showErrorDialog(
                    context,
                    e.toString(),
                  );
                }
              },
              child: const Text("login....")),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(registerroute, (route) => false);
            },
            child: const Text(
              "Not register yet ?? Register here!",
            ),
          ),
        ],
      ),
    );
  }
}
