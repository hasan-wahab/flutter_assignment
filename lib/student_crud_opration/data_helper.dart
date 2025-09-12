import 'dart:io';

import 'package:flutter_assignment_project/student_crud_opration/student_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'abstract_class_data.dart';

class DbHelper extends StudentBase {
  DbHelper._();
  static final DbHelper instance = DbHelper._();
  final String studentTableName = 'Student_table';

  Database? _database;

  Future<Database> get database async {
    _database ??= await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();

    String path = join(directory.path, 'student_table.db');

    Future<Database> studentTable = openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return await studentTable;
  }

  _onCreate(Database db, int version)async {
    await db.execute('''Create TABLE $studentTableName(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  title TEXT,
  description TEXT,
  imageUrl TEXT
  );''');
  }

  //Save student
  @override
  Future<int> saveStudent(StudentModel s) async {
    Database db =  await  database;
    int result =await  db.insert(studentTableName, s.toMap());
    return await result;
  }

  // Delete student
  @override
  Future<int> deleteStudent(int id) async {
    Database db = await database;

    final result = await db.delete(
      studentTableName,
      where: 'id=?',
      whereArgs: [id],
    );
    return result;
  }

  // Get student
  @override
  Future<List> getStudent() async {
    Database db = await database;
    final record = await db.query(studentTableName);
    final List list = [];
    for (var map in record) {
      StudentModel student = StudentModel.fromMap(map);
      list.add(student);
    }
    await Future.delayed(Duration(seconds: 2));
    return list;
  }

  // Update student
  @override
  Future<int> updateStudent(StudentModel s) async {
    Database db = await database;

    final result = await db.update(
      studentTableName,
      s.toMap(),
      where: 'id=?',
      whereArgs: [s.id],
    );

    return result;
  }
}