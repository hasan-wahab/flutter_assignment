import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/grid_view_builder.dart';
import 'package:flutter_assignment_project/gridview_builder_assignment.dart';
import 'package:flutter_assignment_project/shadow_to_image.dart';

import 'listview.dart';
import 'listview_builder.dart';
import 'listview_builder_assignment.dart';
import 'profile_screen.dart';
import 'utility_bill_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

      home:   UtilityBillCard(),
    );
  }
}
