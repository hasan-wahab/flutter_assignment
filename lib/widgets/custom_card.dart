import 'package:flutter/material.dart';

import 'widgets.dart';

class CustomCard extends StatelessWidget {
  final List<Color> colorsList;
  bool container2ndRotate;
  double height;
  double width;
  Widget? leadingIcon;
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  CustomCard({
    super.key,
    required this.colorsList,
    required this.leadingIcon,
    required this.container2ndRotate,
    required this.width,
    required this.height,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: 282,
      width: screenW,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 300 - 10,
            width: screenW - 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 3,
                  )
                ]),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: container2ndRotate == true ? 166 : 116,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: container2ndRotate == true
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    topRight: container2ndRotate == true
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    bottomLeft: container2ndRotate == false
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    bottomRight: container2ndRotate == false
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                  ),
                  gradient: container2ndRotate == true
                      ? LinearGradient(
                          transform: const GradientRotation(120),
                          colors:colorsList)
                      : null,
                  color: Colors.white,
                ),
                child: container2ndRotate == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: leadingIcon,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.white30,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  'Not Payable',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 81,
                            width: width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  text1!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  text2!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  text3!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            height: 93,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black26.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Jun',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueGrey),
                                  ),
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      )),
                                  child: Center(
                                    child: Text(
                                      '2025',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 93,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount',
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      text4!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 18,
                          )
                        ],
                      ),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: container2ndRotate == false ? 166 : 116,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: container2ndRotate == false
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    topRight: container2ndRotate == false
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    bottomLeft: container2ndRotate == true
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                    bottomRight: container2ndRotate == true
                        ? const Radius.circular(20)
                        : const Radius.circular(0),
                  ),
                  gradient: container2ndRotate == false
                      ? LinearGradient(
                          transform: const GradientRotation(120),
                          colors: [
                              Colors.blue.shade300,
                              Colors.pink.shade400,
                            ])
                      : null,
                  color: Colors.white,
                ),
                child: container2ndRotate == false
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: leadingIcon,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Text(
                                  'Not Payable',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 81,
                            width: width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  text1!,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  text2!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  text3!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            height: 93,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.black26.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Jun',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueGrey),
                                  ),
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      )),
                                  child: Center(
                                    child: Text(
                                      '2025',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 93,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount',
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      text4!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 18,
                          )
                        ],
                      ),
              )),
        ],
      ),
    );
  }
}
