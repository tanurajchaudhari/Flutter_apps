import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialogs.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: "Log Out",
    content: "Are you sure want  to log Out?",
    optionsBuilder: () => {
      'Cancel': false,
      'Log Out': true,
    },
  ).then((value) => value ?? false);
}
