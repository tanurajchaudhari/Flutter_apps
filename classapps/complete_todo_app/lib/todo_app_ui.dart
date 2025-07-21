import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'todomodel.dart';
import 'package:intl/intl.dart';

class todo_app_ui extends StatefulWidget {
  const todo_app_ui({super.key});

  @override
  State createState() => _todo_app_ui();
}

class _todo_app_ui extends State {
  //controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  //List of cards
  List<ToDoModel> todocards = [
    ToDoModel(
      title: "flutter",
      description: "dart,widget",
      date: "15 november 2024",
    ),
    ToDoModel(
      title: "Springboot",
      description: "backend technology and hard to understand ",
      date: "16,November 2024",
    ),
    ToDoModel(
      title: "web development",
      description: "html,css,js,mernstack,db",
      date: "17 November 2024",
    ),
  ];

  //list of colors
  List cardColorsList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  //submit logic code
  void submit(bool isEdit, [ToDoModel? todoobj]) {
    if (titleController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty) {
      if (isEdit) {
        //edit the card
        todoobj!.title = titleController.text;
        todoobj.description = descriptionController.text;
        todoobj.date = dateController.text;
      } else {
        //new card
        todocards.add(
          ToDoModel(
              title: titleController.text,
              description: descriptionController.text,
              date: dateController.text),
        );
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState(() {});
  }

  void clearControllers() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void showBottomSheet(bool isEdit, [ToDoModel? todoobj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 12.0,
            right: 12.0,
            left: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create TO-Do",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              // Title textfield
              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(0, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1.0),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              ///descriptio TextField
              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(0, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0, 139, 148, 1.0),
                  ),
                )),
              ),
              const SizedBox(
                height: 20,
              ),

              // Date TextField
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(1, 139, 148, 1.0),
                ),
              ),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(138, 139, 139, 1.0),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.calendar_month_outlined,
                  ),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2024),
                    lastDate: DateTime(2025),
                  );
                  String formattedDate = DateFormat.yMMMd().format(pickedDate!);

                  setState(() {
                    dateController.text = formattedDate;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),

              //Submit button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (isEdit == true) {
                      submit(true, todoobj);
                    } else {
                      submit(false);
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1.0),
      ),
      body: ListView.builder(
          itemCount: todocards.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: cardColorsList[index % cardColorsList.length],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //Image
                        Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/Group42.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),

                        //card content
                        Expanded(
                          child: Column(
                            children: [
                              //Title
                              Text(todocards[index].title),
                              //Description
                              Text(todocards[index].description),
                              //date
                              // Text (todocards[index].date),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          //date
                          Text(
                            todocards[index].date,
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                          Spacer(),
                          //edit icon
                          GestureDetector(
                            onTap: () {
                              titleController.text = todocards[index].title;
                              descriptionController.text =
                                  todocards[index].description;
                              dateController.text = todocards[index].date;
                              showBottomSheet(true, todocards[index]);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1.0),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          //delete icon
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.delete_outline_outlined,
                              color: Color.fromRGBO(0, 139, 138, 1.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
