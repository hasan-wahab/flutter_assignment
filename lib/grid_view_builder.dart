import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gridview builder'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
              mainAxisExtent: 240,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context,index){
             return Container(
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
              );

            },
        )
    );
  }
}
