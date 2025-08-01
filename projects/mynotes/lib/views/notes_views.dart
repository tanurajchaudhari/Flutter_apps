

import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/enums/menu_actions.dart';
import 'package:mynotes/service/auth/auth_service.dart';

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
          PopupMenuButton<MenuAction>(onSelected: (value) async {
            switch (value) {
              case MenuAction.logOut:
                final shouldlogout = await showLogOutDialog(context);

                if (shouldlogout) {
                  
                  await AuthService.firebase().logOut();

                  // ignore: use_build_context_synchronously
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(loginroute, (_) => false);
                }
                //devtools.log(value.toString());
                break;
            }
          }, itemBuilder: (context) {
            return const [
              PopupMenuItem(value: MenuAction.logOut, child: Text("Log  Out")),
            ];
          })
        ],
      ),
      body: const Text("Heloo world ...  "),
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Sign Out "),
          content: const Text("Are you sure want to SIGN OUT"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("Cancel")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("LogOut")),
          ],
        );
      }).then((value) => value ?? false);
}
