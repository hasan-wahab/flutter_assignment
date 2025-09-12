import 'package:flutter/material.dart';

class ReuseAbleRowtext extends StatelessWidget {
  final String firstT;
  final String secondT;
  const ReuseAbleRowtext(
      {super.key, required this.firstT, required this.secondT});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$firstT :  ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '$secondT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
