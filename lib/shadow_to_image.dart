import 'package:flutter/material.dart';

class ShadowToImage extends StatelessWidget {
  const ShadowToImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shadow to container'),
      centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(4, 5),
                    blurRadius: 8,
                  )
                ]
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                      width: 200,
                     // color: Colors.cyan,
                      child: Image.asset('assets/images/burger.png')),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
