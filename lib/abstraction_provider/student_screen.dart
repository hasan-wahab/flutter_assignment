import 'package:flutter/material.dart';
import 'package:new_project_demo/abstraction_provider/data_helper.dart';
import 'package:new_project_demo/abstraction_provider/mixin_class_data.dart';
import 'package:new_project_demo/abstraction_provider/student_model.dart';
import 'package:new_project_demo/widgets/custom_t_field.dart';
import 'package:new_project_demo/widgets/custon_button.dart';
class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
  
}

class _StudentScreenState extends State<StudentScreen> with MixinStudentBase {

  @override
  Widget build(BuildContext context) {
    imageUrl='https://www.google.com/imgres?q=avatar&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-vector%2Fsmiling-young-man-illustration_1308-174669.jpg%3Fsemt%3Dais_hybrid%26w%3D740%26q%3D80&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fmale-avatar&docid=MIhb-fSTvCcixM&tbnid=mlHmviLrZRI6FM&vet=12ahUKEwj1pdzZuMOPAxUzygIHHapWBEQQM3oECCwQAA..i&w=740&h=855&hcb=2&ved=2ahUKEwj1pdzZuMOPAxUzygIHHapWBEQQM3oECCwQAA';
    return Scaffold(
      appBar: AppBar(title: Text('Save record')),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              
              CustomTField(
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
                onTap: () async{
                  if(formKey.currentState!.validate()){
                    StudentModel student = StudentModel(
                      name: name,
                      title: title,
                      description: desc,
                      imageUrl:imageUrl ,
                    );
                    DbHelper db = DbHelper.instance;
                   final result= await db.saveStudent(student);
                   if(result>0){
                     showMsg(context, 'Record Saved');
                   }else{
                     showMsg(context, 'Record Failed');
                   }
                  }else{
                    showMsg(context, 'Please enter required fields');
                  }
                },
                title: 'Save',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
