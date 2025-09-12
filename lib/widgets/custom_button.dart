import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget {
  final VoidCallback? onTap;
  late String? title;
  late int? value;
late double? height;
  late double width;
  CustomButton1({
    super.key,
    required this.onTap,
    this.title = 'Button',
    this.value = 2,
    this.width = 350,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height??40 - 10,
            width: width - 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            height: 50,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                value!.isEven ? Colors.amber : Colors.blue,
                value!.isOdd ? Colors.amber : Colors.red,
              ]),
            ),
            child: Center(
                child: Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
