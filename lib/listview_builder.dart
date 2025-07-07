import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('ListView Builder'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index ){
            return  Card(
              margin:const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child:ListTile(
                leading: CircleAvatar(
                 child: Text(index.toString()),
                ),
                title:const Text('Hasan'),
                subtitle:const Text('ENT'),
                trailing:const Icon(Icons.more_vert),
              ),
            );
          },
      )
    );
  }
}
