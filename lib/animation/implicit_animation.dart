import 'package:flutter/material.dart';
import 'package:new_project_demo/widgets/custon_button.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  double _size=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animation'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Stack(

            children: [
              Align(
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: _size,
                  width: _size,
                  color: Colors.amber,
                  curve: Curves.easeInOutCubicEmphasized,
                ),
              ),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: CustomButton(onTap: (){
                _size = _size == 100 ? 300 : 100;
                setState(() {

                });
              }, title: 'Animation'),
            )
            ],
          ),
        ),
      ),
    );
  }
}
