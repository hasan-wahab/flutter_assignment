import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  late String hintText;
  late String lableText;
  late int? maxLine;

  TextEditingController controller = TextEditingController();

  CustomTextfield({
    super.key,
    this.hintText = 'Enter your marks',
    required this.lableText,
    required this.controller,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: TextField(
        // onChanged: (value) {
        //   var value2 = int.parse(value);
        //   // if (value2 > 100) {
        //   //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //   //       content: Text('Please enter a number less than 100.')));
        //   // }
        // },
        keyboardType: TextInputType.number,
        maxLength: maxLine,
        controller: controller,
        decoration: InputDecoration(
          label: Text(lableText),
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
