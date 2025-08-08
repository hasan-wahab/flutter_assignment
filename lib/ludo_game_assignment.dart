import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/widgets/custom_button.dart';

class LudoGameAssignment extends StatefulWidget {
  const LudoGameAssignment({super.key});

  @override
  State<LudoGameAssignment> createState() => _LudoGameAssignmentState();
}

class _LudoGameAssignmentState extends State<LudoGameAssignment> {

  var currentValue = 6;
  double angle=0;
  int index=1;
void animation(){
  var time=const Duration(milliseconds: 10);
    angle=time.inMilliseconds.toDouble();
    index++;

    Future.delayed(Duration(
        milliseconds: time.inMilliseconds,
    )).whenComplete((){
      setState(() {
        angle=0;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ludo Star'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 50,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: angle,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.yellow,
                    width: 8
                  ),
                  color:Colors.brown,

                  borderRadius: BorderRadius.circular(5),
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children:[
                    rowList()
                  ]
                )
              
              ),
            ),
            CustomButton(
              value:currentValue,
              title: 'Roll Dice',
              onTap: () {
                int randomNumber;
                randomNumber = Random().nextInt(6) + 1;
                setState(() {
                  currentValue = randomNumber;
                });
                print(currentValue);
                animation();
              },
            ),
          ],
        ),
      ),
    );
  }
  rowList<Widget>(){
    if(currentValue==1){
      return Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      );
    }else if(currentValue==2){
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),

        ],
      );
    }else if(currentValue==3){
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),

        ],
      );
    }
    else if(currentValue==4){
      return SizedBox(
        height: 40,
        width: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  List.generate(2, (index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(2, (index){
                  return Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
                })
            );
          }),
        ),
      );
    }else if(currentValue==5){
     return SizedBox(
       height: 40,
       width: 40,
       child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children:  List.generate(2, (index){
                  return   Container(
                    height: 10,
                    width: 10,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
              }),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,

             children:  List.generate(1, (index){
                  return   Container(
                    height: 10,
                    width: 10,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
              }),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  List.generate(2, (index){
                  return   Container(
                    height: 10,
                    width: 10,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
              }),
            ),
         ],
       ),
     );
    }else{
      return SizedBox(
        height: 40,
        width: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  List.generate(3, (index){
            return Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(2, (index){
                  return Container(

                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
                })
            );
          }),
        ),
      );
    }
  }
}
