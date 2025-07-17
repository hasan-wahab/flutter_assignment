import 'package:flutter/material.dart';

import 'widgets/custom_card.dart';
import 'widgets/widgets.dart';

class UtilityBillCard extends StatelessWidget {
  const UtilityBillCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: CustomAppBar(
        leadingIcon1: const Icon(Icons.person),
        leadingIcon2: const Icon(Icons.search),
        actionIcon: const Icon(Icons.arrow_back,color: Colors.blue,),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: screenH,
          width: screenW,
          child: Column(
            spacing: 20,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Utility Bills',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
             CustomCard(

               leadingIcon: const Icon(Icons.lightbulb_outline_rounded,color: Colors.blue,),
               text1: 'Pesco Bill',
               text2: '0987654321123',
               text3: 'PESCO',
               text4: 'Rs. 14,750',
               height: screenH,
               width: screenW,

               container2ndRotate: true,
              colorsList: [
                Colors.blue.shade400,
                Colors.pink.shade300,
              ],
             ),
             CustomCard(

               leadingIcon: const Icon(Icons.gas_meter_outlined,color: Colors.blue,),
               text1: 'Hasan Wahab',
               text2: '0987654321123',
               text3: 'SNGPL',
               text4: 'Rs. 7000',
               height: screenH,
               width: screenW,
               colorsList: [
                 Colors.yellow.shade400,
                 Colors.purpleAccent.shade200,
               ],
               container2ndRotate: true,

             ),

            ],
          ),
        ),
      ),
    );
  }
}
