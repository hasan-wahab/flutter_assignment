import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKitWidget extends StatefulWidget {
  const SpinKitWidget({super.key});

  @override

  State<SpinKitWidget> createState() => _SpinKitWidgetState();
}

class _SpinKitWidgetState extends State<SpinKitWidget> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar:AppBar(

        title:const Text('Spin Kit'),

        centerTitle:true,

      ),

      body:ListView(

        // children:[

        //   SizedBox(

        //     height: 40,

        //   ),

        //   SafeArea(

        //     child: SpinKitFadingCube(

        //       color: Colors.green,

        //       size: 100.0,

        //     ),

        //   ),

        //   SizedBox
        //     height: 40,

        //   ),

        //   SafeArea(

        //     child: SpinKitFadingCircle(

        //       color: Colors.grey,

        //       size: 100.0,

        //     ),

        //   ),

        //   SizedBox(

        //     height: 40,

        //   ),

        //   SafeArea(

        //     child: SpinKitFadingGrid(

        //       color: Colors.purple,

        //       size: 100.0,

        //     ),

        //   ),

        //   SizedBox(

        //     height: 40,

        //   ),

        //   SafeArea(

        //     child: SpinKitChasingDots(

        //       color: Colors.red,

        //       size: 100.0,

        //     ),

        //   ),

        // ]

       )

    );

  }

}
