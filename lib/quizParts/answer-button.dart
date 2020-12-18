import 'package:flutter/material.dart';
import '../library.dart' as lib;

class AnswerButton extends StatefulWidget {
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  Widget build(BuildContext context) {
    double buttonWidth =
        MediaQuery.of(context).size.width * 0.5
        - lib.textMarge * 2;

    return Padding(
      padding: const EdgeInsets.all(lib.textMarge),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: buttonWidth * 0.5,
          minWidth: buttonWidth,
          maxWidth: buttonWidth,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
              )
            ],
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              'Answer',
              textAlign: TextAlign.center,
              style: lib.basicText,
            ),
          ),
        ),
      ),
    );
  }
}