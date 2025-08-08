import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/widgets/custom_button.dart';

class ConfetiPackage extends StatefulWidget {
  const ConfetiPackage({super.key});

  @override
  State<ConfetiPackage> createState() => _ConfetiPackageState();
}

class _ConfetiPackageState extends State<ConfetiPackage> {
  final ConfettiController confettiController=ConfettiController(
    duration: Duration(microseconds: 20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confite Package'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 200,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ConfettiWidget(
            maximumSize: Size(70, 70),
            shouldLoop: true,
          confettiController: confettiController,
        ),
            CustomButton(
              title: 'Start',
              onTap: (){
            confettiController.play();
              },
            ),
          ],
        ),
      ),
    );
  }
  // @override
  // void dispose() {
  //   confettiController.dispose();
  //   super.dispose();
  // }
}
