import 'package:flutter/material.dart';

class IqTextField extends StatefulWidget {
  final String hintText;
  final Function(String)? onChanged;

  const IqTextField({Key? key, required this.hintText, this.onChanged})
      : super(key: key);

  @override
  IqTextFieldState createState() => IqTextFieldState();
}

class IqTextFieldState extends State<IqTextField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(hintText: widget.hintText),
    );
  }
}
