import 'package:flutter/material.dart';

class CustomTField extends StatelessWidget {
  final Function(String? value) validator;
  final String hintText;
  final String lableText;
  final String? initialValue;

  const CustomTField({
    super.key,
    required this.validator,
    required this.hintText,
    required this.lableText,
     this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        label: Text(lableText),
      ),
    );
  }
}
