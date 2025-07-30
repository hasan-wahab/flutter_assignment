import 'package:flutter/cupertino.dart';

 class DataModel{
  late String name;

  late Widget icon;
  final Function(bool value) onChanged;

  DataModel({
    required this.name,
    required this.icon,
    required this.onChanged,
});
}