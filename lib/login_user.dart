import 'package:flutter/material.dart';
import 'package:new_project_demo/abstraction_provider/student_model.dart';
import 'package:new_project_demo/provider/login_provider.dart';
import 'package:new_project_demo/themes/app_thems.dart';
import 'package:new_project_demo/widgets/custom_t_field.dart';
import 'package:new_project_demo/widgets/custon_button.dart';
import 'package:provider/provider.dart';

import 'mixin/login_validation.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> with LoginValidation {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? email, password;
  bool emailAndPasswordIsValid = false;

  // StudentModel studentModel=StudentModel.instance;

  // void auth(String email, String password) {
  //   if (isValidEmail(email) && isValidPassword(password)) {
  //     setState(() {
  //       emailAndPasswordIsValid = true;
  //     });
  //   } else {
  //     setState(() {
  //       emailAndPasswordIsValid = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context,provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Login Screen',),
          ),
          backgroundColor: Colors.white,
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  CustomTField(
                    hintText: 'Enter your email',
                    lableText: 'Email',
                    validator: (String? value) {
                      if (value!.isEmpty || value == '') {
                        return 'Please enter your email';
                      }
                      email = value;
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTField(
                    hintText: 'Enter your password',
                    lableText: 'Password',
                    validator: (String? value) {
                      if (value!.isEmpty || value == '') {
                        return 'Please enter your password';
                      }
                      password = value;
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    onTap: () {
                      final form = _formKey.currentState;
                      if (form!.validate()) {
                        provider.emailAndPassword(email, password);



                        // auth(email!, password!);
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text(emailAndPasswordIsValid.toString()),
                        //     ),
                        //   );
                        // } else {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text(emailAndPasswordIsValid.toString()),
                        //     ),
                        //   );
                      }
                    },
                    title: 'Login',
                  ),
                  SizedBox(height: 30,),
                  Text(provider.msg.toString())
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {},
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
