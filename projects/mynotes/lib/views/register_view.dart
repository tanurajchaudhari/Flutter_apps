// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/service/auth/auth_exception.dart';
import 'package:mynotes/service/auth/auth_service.dart';
import 'package:mynotes/utilities/show_error_dialogs.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
        title: const Text("Register "),
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
                  await AuthService.firebase().createUser(email: email, password: password,);
                  AuthService.firebase().sendEmailVerification();
                  if(!mounted)return;
                 
                  Navigator.of(context).pushNamed(
                    verifyEmailRoute,
                  );
                }on WeakPasswordAuthException{
                  showErrorDialog(
                     
                      context,
                      "WEak Password ",
                    );

                }on EmailAlreadyInUseAuthException{
                  showErrorDialog(
                      
                      context,
                      "Email already in use ",
                    );

                }on InvalidEmailAuthException{
                  showErrorDialog(
                     
                      context,
                      "Invalid Email",
                    );

                }on GenericAuthException{
                   showErrorDialog(
                    context,
                    "Failed  to register ",
                  );

                }
                
              },
              child: const Text("Register  ")),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(loginroute, (route) => false);
            },
            child: const Text("Already register ? Login here!"),
          )
        ],
      ),
    );
  }
}
