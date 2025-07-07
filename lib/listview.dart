import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('ListView'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(

        children: const [
         Card(
           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Hasan'),
              subtitle: Text('ENT'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
         Card(
           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Rehman'),
              subtitle: Text('Cardiologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
         Card(
           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Farman'),
              subtitle: Text('Neurologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
         Card(
           margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Affan'),
              subtitle: Text('Orthopedic'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Hasan'),
              subtitle: Text('ENT'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Rehman'),
              subtitle: Text('Cardiologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Farman'),
              subtitle: Text('Neurologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Affan'),
              subtitle: Text('Orthopedic'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Hasan'),
              subtitle: Text('ENT'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
               leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
              title: Text('Rehman'),
              subtitle: Text('Cardiologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Farman'),
              subtitle: Text('Neurologist'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child:ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Affan'),
              subtitle: Text('Orthopedic'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
