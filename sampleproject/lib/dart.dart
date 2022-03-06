import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart'; 


//void main(){
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s is your favourite color? ',
      'answers': ['Black', 'Red', 'Green', 'white'],
    },
    {
      'questionText': 'What\'s is your favourite animal?',
      'answers': ['Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who is your favourite instructor? ',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },

  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool= true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
  @override
  Widget build(BuildContext context) {
// var dummy =  ['Hello'];
// dummy.add('Max');
// print(dummy);
// dummy = [];
// questions = [];  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body : _questionIndex <= 2
            ? Quiz(
              answerQuestion: _answerQuestion,
               questionIndex: _questionIndex,
                questions: _questions,


              )
              : Result(),

      ),
    );
  } 
}