import 'package:flutter/material.dart';

class IqButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const IqButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Text(text),
    );
  }
}
