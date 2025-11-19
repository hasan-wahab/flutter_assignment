import 'package:flutter/material.dart';

class ChattingApp extends StatefulWidget {
  const ChattingApp({super.key});

  @override
  State<ChattingApp> createState() => _ChattingAppState();
}

class _ChattingAppState extends State<ChattingApp> {
 late ScrollController scrollController=ScrollController();
  List<String> user1 = [];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
   var controller=ScrollController();


    if(controller.hasClients){
      controller.addListener((){
        print("Controller ${controller.position.pixels}");
        controller=scrollController;
        setState(() {

        });
      });

    }
    super.initState();
  }
  sendMessage(String data) {
    if (data != '') {
      setState(() {
        user1.add(data);
      });
      print(user1.length);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chatting'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
           child:
              ListView.builder(
                controller: scrollController,
                  itemCount: user1.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: user1[index].contains('1') == true
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        Container(
                          width: user1[index].toString().length > 37
                              ? MediaQuery.sizeOf(context).width / 1.4
                              : null,
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            user1[index],
                            maxLines: 3,
                          ),
                        ),
                      ],
                    );
                  }),
          ),

        ],
      ),
      bottomSheet:   SizedBox(
        height: 80,
        child: Padding(
          padding:
          const EdgeInsets.only(bottom: 20,right: 10,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      sendMessage(controller.text.toString());
                      controller.clear();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
