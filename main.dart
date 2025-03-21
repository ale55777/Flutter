import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, dynamic>> _questions = [
    {"question": "Flutter is developed by Google.", "answer": true},
    {"question": "Dart is the language used in Flutter.", "answer": true},
  ];

  int index = 0;

  void answer(bool userAnswer) {
    if (index < _questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ali Quiz App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_questions[index]["question"], style: TextStyle(fontSize: 24)),
            ElevatedButton(onPressed: () => answer(true), child: Text("True")),
            ElevatedButton(onPressed: () => answer(false), child: Text("False")),
          ],
        ),
      ),
    );
  }
}
