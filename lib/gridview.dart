import 'package:flutter/material.dart';

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: GridView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 240,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Chicken Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('299 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cheese Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('300 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Zinger Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('455 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Smash Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('367 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Chicken Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('299 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cheese Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('300 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Zinger Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('455 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    spreadRadius: 2,
                    offset: const Offset(2, 2),

                  )
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset('assets/images/burger.png')),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Smash Burger',
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ) ,
                      ),
                      Icon(Icons.favorite,color: Colors.red,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Free delivery',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Icon(Icons.delivery_dining,color: Colors.teal,)
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rs',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                      Text('367 PKR',
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ) ,
                      ),
                    ],
                  ),


                ],
              ),
            ),

          ],
        ));
  }
}
