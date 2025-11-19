import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/abstraction_provider/student_get.dart';
import 'package:flutter_assignment_project/api_request/api_assignment.dart';
import 'package:flutter_assignment_project/chatting.dart';
import 'package:flutter_assignment_project/google_map.dart';

import 'gallery_image_convert_to_base64.dart';

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
      home: ChattingApp(),
    );
  }
}
