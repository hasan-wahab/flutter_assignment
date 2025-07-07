import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.amber,
                        backgroundImage:  AssetImage('assets/images/avatar.png'),
                      ),
                      Positioned(
                      top: 100,
                          left: 90,
                          child: Container(
                              height: 40,
                              width: 40,
                             // color: Colors.amber,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Icon(Icons.camera_alt,color: Colors.grey,)))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 20,
                children: [
                  Icon(Icons.person,size: 30,),
                  Text('Hasan',style: TextStyle(
                      fontSize: 18,
                  ),),
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 20,
                children: [
                  Icon(Icons.email,size: 30,),
                  Text('hasanwahan025@gmail.com',style: TextStyle(
                    fontSize: 18,
                  ),),
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 20,
                children: [
                  Icon(Icons.school,size: 30,),
                  Text('Hazara Collage',style: TextStyle(
                    fontSize: 18,
                  ),),
                ],

              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                spacing: 20,
                children: [
                  Icon(Icons.phone,size: 30,),
                  Text('098765432',style: TextStyle(
                    fontSize: 18,
                  ),),
                ],
              ),


            ],

          ),
        ),
      ),
    );
  }
}
