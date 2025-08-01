import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/service/auth/auth_exception.dart';
import 'package:mynotes/service/auth/auth_service.dart';
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
                  await AuthService.firebase().logIn(
                    email: email,
                    password: password,
                  );
                  if (!mounted) return;
                  final user =AuthService.firebase().currentUser;
                  if (user?.isEmailVerified ?? false) {
                    //user's email is verified
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      notesroute,
                      (route) => false,
                    );
                  } else {
                    //user's  email is NOT verified
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      verifyEmailRoute,
                      (route) => false,
                    );
                  }
                } on UserNotFoundAuthException{
                  showErrorDialog(
                      // ignore: use_build_context_synchronously
                      context,
                      "user Not Found",
                    );
                }on WrongPasswordAuthException{
                  showErrorDialog(
                      // ignore: use_build_context_synchronously
                      context,
                      "Wrong password",
                    );
                }on InvalidEmailAuthException{
                  showErrorDialog(
                      // ignore: use_build_context_synchronously
                      context,
                      "invalid-email",
                    );

                } on GenericAuthException{
                  showErrorDialog(
                    // ignore: use_build_context_synchronously
                    context,
                    "Authentication Error",
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
