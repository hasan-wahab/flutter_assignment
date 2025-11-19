import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/abstraction_provider/data_helper.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_model.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_screen.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_update.dart';

class StudentGet extends StatefulWidget {
  const StudentGet({super.key});

  @override
  State<StudentGet> createState() => _StudentGetState();
}

class _StudentGetState extends State<StudentGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Student'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder(
          future: DbHelper.instance.getStudent(),
          builder: (context, snap) {
            if (snap.hasData) {
              if (snap.data!.isEmpty) {
                return Center(
                  child: Text('No data fond'),
                );
              } else {
                return ListView.builder(
                    itemCount: snap.data!.length,
                    itemBuilder: (context, index) {
                      StudentDataModel student = snap.data![index];
                      return SizedBox(
                        height: 250,
                        child: Card(
                          color: Colors.amber,
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      spacing: 10,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              NetworkImage(student.imageUrl),
                                        ),
                                        Text(
                                          student.name,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          StudentUpdate(
                                                              student:student)));
                                            },
                                            icon: Icon(Icons.edit)),
                                        IconButton(
                                            onPressed: () async {
                                              DbHelper db = DbHelper.instance;
                                              await db
                                                  .deleteStudent(student.id!);
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),
                                Text(
                                  student.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text(
                                  student.description,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => StudentScreen()));
        },
        backgroundColor: Colors.teal,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
