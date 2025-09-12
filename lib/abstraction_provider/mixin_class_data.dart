import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin class MixinStudentBase{
  int? id;
  late String imageUrl;
  late String name;
  late String title;
  late String desc;
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();

  void showMsg(BuildContext context,String msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}
}
