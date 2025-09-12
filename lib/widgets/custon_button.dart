import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function ()onTap;

  const CustomButton({super.key,required this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18),)),
      ),
    );
  }
}
