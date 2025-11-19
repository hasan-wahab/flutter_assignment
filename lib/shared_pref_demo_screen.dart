import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefDemoScreen extends StatefulWidget {
  const SharedPrefDemoScreen({super.key});

  @override
  State<SharedPrefDemoScreen> createState() => _SharedPrefDemoScreenState();
}

class _SharedPrefDemoScreenState extends State<SharedPrefDemoScreen> {
  int count = 0;

  @override
  void initState() {
    getValue();
    super.initState();
  }

  Future<void> getValue() async {
    var prefs = await SharedPreferences.getInstance();
    count = prefs.getInt('Counter') ?? 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Prefrence'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final prefs = await SharedPreferences.getInstance();
          count++;
          setState(() {
            prefs.setInt('Counter', count);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
