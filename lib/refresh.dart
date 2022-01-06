import 'package:flutter/material.dart';

class Refresh extends StatelessWidget {
  final VoidCallback clickHandler;

  Refresh(this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          textColor: Colors.pink.shade200,
          child: Text(
            'Refresh!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: clickHandler,
        ),
      ),
    );
  }
}
