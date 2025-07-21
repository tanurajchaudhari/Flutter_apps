import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class iplteams extends StatefulWidget {
  const iplteams({super.key});

  @override
  State createState() => _iplteamsState();
}

// ignore: camel_case_types
class _iplteamsState extends State {
  XFile? selectedimg;
  TextEditingController playerName = TextEditingController();
  TextEditingController jerNo = TextEditingController();
  TextEditingController teamName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IPL TEAMS ",
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () async {
                  ImagePicker impagepick = ImagePicker();
                  selectedimg =
                      await impagepick.pickImage(source: ImageSource.gallery);
                  setState(() {
                    log(selectedimg!.path);
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: selectedimg == null
                      ? Image.asset("assets/avatar.jpg")
                      : Image.file(File(selectedimg!.path)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: playerName,
              decoration: InputDecoration(
                hintText: "Enter player Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: jerNo,
              decoration: InputDecoration(
                hintText: "Enter player jersey Number",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: teamName,
              decoration: InputDecoration(
                hintText: "Enter team Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add Data",
                    style: GoogleFonts.quicksand(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
