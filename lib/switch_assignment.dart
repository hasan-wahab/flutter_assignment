import 'package:flutter/material.dart';

class SwitchAssignment extends StatefulWidget {
  const SwitchAssignment({super.key});

  @override
  State<SwitchAssignment> createState() => _SwitchAssignmentState();
}

class _SwitchAssignmentState extends State<SwitchAssignment> {
  var isChecked=[
    false,
    false,
    false,
    false,
    false,
  ];
List <String> sensor=[
  'Shake Sensor',
    'Proximity Sensor',
    'Pocket Sensor',
    'Smart Flip Cover',
    'Shake Sensor',
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        title: const Text('Smart Screen On Off'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 115,
                      width: 115,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade400),
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                    const Text(
                      'ON',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'General',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  itemCount: sensor.length,
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.refresh,
                              size: 30,
                            ),
                            title: Text(
                               sensor[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            subtitle: Text(
                              isChecked[index] ? 'ON' : 'OFF',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isChecked[index] ? Colors.blue : Colors.grey,
                                  fontSize: 17),
                            ),
                            trailing: Switch(
                              padding: EdgeInsets.zero,
                              value: isChecked[index],
                              onChanged: (value) {
                                setState(() {
                                  isChecked[index]=value;
                                });
                              },
                            ),

                          ),
                          const Divider(),
                        ],
                      ),
                    );

                    },
                )
              ]),
        ),
      ),
    );
  }
}
