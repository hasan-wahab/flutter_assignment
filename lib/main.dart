import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/abstract_providers/student_screen.dart';
import 'package:flutter_assignment_project/switch_assignment.dart';

import 'gridview_builder_assignment.dart';
import 'shared_pref_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home:  const StudentScreen(),
    );
  }
}
