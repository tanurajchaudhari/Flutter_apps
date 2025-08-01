// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/service/auth/auth_service.dart';


class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Veify Your mail"),
      ),
      body: Column(
        children: [
          const Text(
              "WE've send you  an email verification,please open email to verify it "),
          const Text(
              "if haven't receives  verification email yet ,press the button below  "),
          TextButton(
            onPressed: () async {
             await AuthService.firebase().sendEmailVerification();
              
            },
            child: const Text("I have verified my email"),
          ),
          TextButton(
              onPressed: () async {
                 await AuthService.firebase().logOut();

                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerroute,
                  (_) => false,
                );
              },
              child: const Text("Restart"))
        ],
      ),
    );
  }
}
