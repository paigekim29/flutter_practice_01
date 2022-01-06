// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './word.dart';
import './wordControl.dart';
import './refresh.dart';

void main() => runApp(FirstAssignment());

class FirstAssignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstAssignmentState();
}

class _FirstAssignmentState extends State<FirstAssignment> {
  final _words = const [
    'Hello, I\'m Paige',
    'This is my first Flutter Assignment',
    'Please enjoy!',
    'Thank you :)'
  ];

  var _wordIndex = 0;

  void _resetWords() {
    setState(() {
      _wordIndex = 0;
    });
  }

  void _changeWord() {
    setState(() {
      _wordIndex += 1;
    });

    print(_wordIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: _wordIndex < _words.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Word(_words, _wordIndex),
                  WordControl(_changeWord),
                ],
              )
            : Refresh(_resetWords),
      ),
    );
  }
}
