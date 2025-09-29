import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialogs.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: "Delete",
    content: "Are you sure want  to log Delete this item?",
    optionsBuilder: () => {
      'Cancel': false,
      'Yes': true,
    },
  ).then((value) => value ?? false);
}
