import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_get.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_model.dart';
import 'package:sqflite/sqflite.dart';

import '../ui/widgets/custom_t_field.dart';
import '../ui/widgets/custon_button.dart';
import 'data_helper.dart';
import 'mixin_class_data.dart';

// ignore: must_be_immutable
class StudentUpdate extends StatefulWidget {
  StudentDataModel student;
  StudentUpdate({super.key, required this.student});

  @override
  State<StudentUpdate> createState() => _StudentUpdateState();
}

class _StudentUpdateState extends State<StudentUpdate> with MixinStudentBase {
  @override
  Widget build(BuildContext context) {
    imageUrl =
        'https://www.google.com/imgres?q=avatar&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-vector%2Fsmiling-young-man-illustration_1308-174669.jpg%3Fsemt%3Dais_hybrid%26w%3D740%26q%3D80&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fmale-avatar&docid=MIhb-fSTvCcixM&tbnid=mlHmviLrZRI6FM&vet=12ahUKEwj1pdzZuMOPAxUzygIHHapWBEQQM3oECCwQAA..i&w=740&h=855&hcb=2&ved=2ahUKEwj1pdzZuMOPAxUzygIHHapWBEQQM3oECCwQAA';

    return Scaffold(
      appBar: AppBar(
        title: Text('Update student'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              CustomTField(
                initialValue: widget.student.name,
                validator: (value) {
                  if (value!.isEmpty || value == '') {
                    return 'Please enter required fields';
                  }
                  name = value;
                  return null;
                },
                hintText: 'Enter your name',
                lableText: 'Name',
              ),
              SizedBox(height: 20),
              CustomTField(
                initialValue: widget.student.title,
                validator: (value) {
                  if (value!.isEmpty || value == '') {
                    return 'Please enter required fields';
                  }
                  title = value;

                  return null;
                },
                hintText: 'Enter your title',
                lableText: 'Title',
              ),
              SizedBox(height: 20),
              CustomTField(
                initialValue: widget.student.description,
                validator: (value) {
                  if (value!.isEmpty || value == '') {
                    return 'Please enter required fields';
                  }
                  desc = value;
                  return null;
                },
                hintText: 'Enter your description',
                lableText: 'Description',
              ),
              SizedBox(height: 20),
              CustomButton(
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    try {
                      StudentDataModel student = StudentDataModel(
                        id: widget.student.id,
                        name: name.isEmpty ? widget.student.name : name,
                        title: title.isEmpty ? widget.student.title : title,
                        description:
                            desc.isEmpty ? widget.student.description : desc,
                        imageUrl: imageUrl,

                      );

                      DbHelper db = DbHelper.instance;
                      final result = await db.updateStudent(student);
                      if (result > 0) {
                        showMsg(context, 'Updated');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentGet()));
                        setState(() {});
                      } else {
                        showMsg(context, 'Failed');
                        setState(() {});
                      }
                    } on DatabaseException catch (e) {
                      showMsg(context, e.toString());
                    }
                  } else {
                    showMsg(context, 'Please enter required fields');
                  }
                },
                title: 'Update',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
