import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/10/quiz_brain.dart';

class QuizzlerPage extends StatelessWidget {
  static const String routName = '/quizzler';

  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
        title: const Text(
          'Quizzler',
          style: TextStyle(fontSize: 32, color: Colors.green),
        ),
      ),
      body: const Quizzler(),
    );
  }
}

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Widget> scoreKeeper = [];

  var questionsNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionsNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text(
                'True',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                bool correctAnswer =
                    quizBrain.questionBank[questionsNumber].questionAnswer;
                if (correctAnswer) {
                  print('User got it right');
                } else {
                  print('User got it wrong');
                }
                setState(
                  () {
                    questionsNumber++;
                    scoreKeeper.add(
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                  },
                );
                print(questionsNumber);
              },
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            child: const Text(
              'False',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              bool correctAnswer =
                  quizBrain.questionBank[questionsNumber].questionAnswer;
              if (!correctAnswer) {
                print('User got it right');
              } else {
                print('User got it wrong');
              }
              setState(
                () {
                  questionsNumber++;
                  scoreKeeper.add(
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                },
              );
              print(questionsNumber);
            },
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
