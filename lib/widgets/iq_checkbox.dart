import 'package:flutter/material.dart';

class IqCheckbox extends StatefulWidget {
  final String label;
  final bool initialValue;
  final Function(bool)? onChanged;

  const IqCheckbox({
    Key? key,
    required this.label,
    required this.initialValue,
    this.onChanged,
  }) : super(key: key);

  @override
  IqCheckboxState createState() => IqCheckboxState();
}

class IqCheckboxState extends State<IqCheckbox> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.label),
      value: _value,
      onChanged: (newValue) {
        setState(() {
          _value = newValue ?? false;
          if (widget.onChanged != null) {
            widget.onChanged!(_value);
          }
        });
      },
    );
  }
}
