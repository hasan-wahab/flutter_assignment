import 'package:flutter/material.dart';

class ListviewBuilderAssignment extends StatelessWidget {
  const ListviewBuilderAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Notification'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),

                  height: 140,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(14),
                    border: BoxBorder.fromSTEB(

                        end: BorderSide(color:Colors.black.withOpacity(0.3),)
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  height: 140,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(14),
                    border: BoxBorder.fromSTEB(
                        bottom: BorderSide(color:index.isEven? Colors.black.withOpacity(0.3):Colors.white,
                        ),
                    top: BorderSide(color:index.isEven? Colors.black.withOpacity(0.3):Colors.white,),
                     // end: BorderSide(color: index.isEven?Colors.black:Colors.black)
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: const Text('Bundle successful!',
                             style: TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold
                             ),),
                         ) ,
                          Expanded(child: Container()),
                          const Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                      Row(
                        spacing: 10,

                        children: [
                          Container(
                            margin:  EdgeInsets.only(bottom: 15),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle
                            ),
                          ),
                          Container(
                            width: screenWidth-100,
                            child: Text('Congratulations! You have activated Super'
                                ' Card Premium. Thank you for trusting UPTCL App!',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('4:35 AM',style:
                            TextStyle(
                              color: Colors.grey
                            )
                            ,)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
