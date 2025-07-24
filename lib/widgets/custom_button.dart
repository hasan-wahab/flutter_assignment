import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback ? onTap;
  late String? title;
    CustomButton({super.key,required this.onTap,this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 40 - 10,
            width: MediaQuery.sizeOf(context).width - 50,
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
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [
                Colors.blueAccent,
                Colors.blue,
              ]),
            ),
            child:  Center(
                child: Text(title!,style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)),
          ),
        ],
      ),
    );
  }
}
