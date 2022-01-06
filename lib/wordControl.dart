import 'package:flutter/material.dart';

class WordControl extends StatelessWidget {
  final VoidCallback clickHandler;

  WordControl(this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.pink.shade200,
        textColor: Colors.white,
        child: Text(
          'Press Me!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: clickHandler,
      ),
    );
  }
}
