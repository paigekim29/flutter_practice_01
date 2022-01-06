import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  final List<String> words;
  final int wordIndex;

  Word(this.words, this.wordIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Center(
        child: Text(
          words[wordIndex],
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
