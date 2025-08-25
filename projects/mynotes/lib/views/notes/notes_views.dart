import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/enums/menu_actions.dart';
import 'package:mynotes/service/auth/auth_service.dart';
import 'package:mynotes/service/crud/notes_service.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});
  @override
  State createState() => _NotesViewState();
}

class _NotesViewState extends State {
  late final NotesService _notesService;
  String get userEmail => AuthService.firebase().currentUser!.email!;
  
  
  @override
  void initState() {
    _notesService = NotesService();

    super.initState();
  }

  @override
  void dispose() {
    _notesService.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Notes"),
          actions: [

            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(newnoteroute);
              },
              icon: const Icon(Icons.add),
            ),
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
                PopupMenuItem(
                    value: MenuAction.logOut, child: Text("Log  Out")),
              ];
            })
          ],
        ),
        body: FutureBuilder(
          future: _notesService.getOrCreateUser(email: userEmail),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return StreamBuilder(
                    stream: _notesService.allNotes,
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const Text("Waiting fo all notes ");
                        default:
                          return CircularProgressIndicator();
                        //return const Text("default of waiting");
                      }
                    });
              default:
                return CircularProgressIndicator();
              //return const Text("Default of done");
            }
          },
        ));
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
