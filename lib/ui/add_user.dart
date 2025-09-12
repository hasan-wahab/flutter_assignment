import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/ui/get_user.dart';
import 'package:flutter_assignment_project/ui/widgets/custom_t_field.dart';
import 'package:flutter_assignment_project/ui/widgets/custon_button.dart';

import 'package:sqflite/sqflite.dart';

import '../data_modle/student_modle.dart';
import '../db/db_helper.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final GlobalKey<FormState> _formKey=GlobalKey();
  var course = 'Flutter';
  String? name, mobile,totalFee,feePaid;


  @override
  Widget build(BuildContext context) {
    final screenW=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('Add Student'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              CustomTField(
                validator: (value) {
                  if(value!.isEmpty||value==''){
                    return 'Enter your name';
                  }
                  name=value;
                },
                hintText: 'Enter your name',
                lableText: 'Name',
              ),
              SizedBox(height: 20),
              CustomTField(
                validator: (value) {
                  if(value!.isEmpty||value==''){
                    return 'Enter your mobile';
                  }
                  mobile=value;
                },
                hintText: 'Enter your mobile',
                lableText: 'Mobile',
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                ),
                child: Center(
                  child: DropdownButton(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    menuWidth: screenW-40,
                    hint: Text('Select course'),
                    underline: SizedBox(),
                    elevation: 0,
                    value: course,
                    borderRadius: BorderRadius.circular(20),
                    icon: Icon(Icons.arrow_drop_down),
                    dropdownColor: Colors.teal,
                    isExpanded: true,
                    alignment: Alignment.center,
                    items: [
                      DropdownMenuItem(
                        value: 'Flutter',
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                            color: course == 'Flutter'
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Android',
                        child: Text(
                          'Android',
                          style: TextStyle(
                            color: course == 'Android'
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      DropdownMenuItem(

                        value: 'Java',
                        child: Text(
                          'Java',
                          style: TextStyle(
                            color: course == 'Java'
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'C++',
                        child: Text(
                          'C++',
                          style: TextStyle(
                            color: course == 'C++'
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Python',
                        child: Text(
                          'Python',
                          style: TextStyle(
                            color: course == 'Python'
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        course = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomTField(
                validator: (value) {
                  if(value!.isEmpty||value==''){
                    return 'Enter your total fee';
                  }
                  totalFee=value;
                },
                hintText: 'Enter your total fee',
                lableText: 'Total fee',
              ),
              SizedBox(height: 20),
              CustomTField(
                validator: (value) {
                  if(value!.isEmpty||value==''){
                    return 'Enter your fee paid';
                  }
                  feePaid=value;
                },
                hintText: 'Enter your fee paid',
                lableText: 'Fee paid',
              ),

              SizedBox(height: 30),

              CustomButton(
                title: 'Save record',
                onTap: () async{
                  if(_formKey.currentState!.validate()){
                    StudentModel student = StudentModel(
                      name: name!,
                      mobile: mobile!,
                      course: course,
                      totalFee: int.parse(totalFee!),
                      feePaid: int.parse(feePaid!),
                    );

                    try{
                      DbHelper db=  DbHelper.instance;
                      int result= await db.saveStudent(student);
                      if(result>0){
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text('Record saved')));
                      }
                    }on DatabaseException catch(e){
                if(e.toString().contains('UNIQUE constraint failed')){
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Mobile number already exist')));
                }else{
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(e.toString())));
                }
                    }
                  }else{
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Enter required fields')));

                  }


                },
              ),
              SizedBox(height: 20),
              CustomButton(
                title: 'View All',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetUserScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
