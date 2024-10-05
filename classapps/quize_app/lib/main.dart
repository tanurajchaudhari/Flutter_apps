import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestion = [
    {
      "question": "Who is the founder of Microsoft ",
      "option": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Google ",
      "option": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of SpaceX ",
      "option": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is the founder of Apple ",
      "option": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of meta ",
      "option": ["Steve Jobs", "mark zukerberg", "Lary Page", "Elon musk"],
      "correctAnswer": 1
    },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  WidgetStateProperty<Color?> checkanswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestion[currentQuestionIndex]["correctAnswer"]) {
        score++;
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        score--;
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;
  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quize App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question : ${currentQuestionIndex + 1} /${allQuestion.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestion[currentQuestionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkanswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child:
                    Text("A.${allQuestion[currentQuestionIndex]["option"][0]}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkanswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                    "B.  ${allQuestion[currentQuestionIndex]["option"][1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkanswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child:
                    Text("C.${allQuestion[currentQuestionIndex]["option"][2]}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkanswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(allQuestion[currentQuestionIndex]["option"][3],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestion.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.pink,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://media.istockphoto.com/id/1182465245/photo/gold-winners-trophy-champion-cup-with-falling-confetti.jpg?s=612x612&w=0&k=20&c=oL7XQ2GgDptAOYAZY_63kYjRrAnb_Zhn0GUdNLy4rpY=",
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              Text("Scoore: $score "),
            ],
          ),
        ),
      );
    }
  }
}
