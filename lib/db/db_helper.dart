// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// import '../abstraction_provider/student_model.dart';
// import '../data_modle/student_modle.dart';
//
//
//
// class DbHelper {
//   // Singleton pattern
//   DbHelper._();
//   static final DbHelper instance = DbHelper._();
//
//   final String studentTableName = 'Student_table';
//
//   // private variable
//   Database? _database;
//
//   // getter
//   Future<Database> get database1 async {
//     _database ??= await initializeDatabase();
//     return _database!;
//   }
//
//   // initialize database
//   Future<Database> initializeDatabase() async {
//     Directory directory = await getApplicationDocumentsDirectory();
//
//     String path = join(directory.path, 'master.db');
//
//     Future<Database> studentDatabase = openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//     return await studentDatabase;
//   }
//
//   // open Data base
//   Future<void> _onCreate(Database db, int version) async {
//     await db.execute('''Create TABLE $studentTableName(
//   id INTEGER PRIMARY KEY AUTOINCREMENT,
//   name TEXT NOT NULL,
//   mobile TEXT UNIQUE NOT NULL,
//   course TEXT,
//   totalFee INTEGER,
//   feePaid INTEGER
//
//   );''');
//   }
//
//   // Save student method
//   Future<int> saveStudent(StudentDataModel s) async {
//     Database db = await database1;
//     int result = await db.insert(studentTableName, s.toMap());
//     return await result;
//   }
//
//   // Get student method
//   Future<List<StudentModel>> getAllStudent() async {
//     List<StudentModel> studentsList = [];
//     Database db = await database1;
//     final record = await db.query(studentTableName);
//     for (var map in record) {
//       final students = StudentModel.fromMap(map);
//       studentsList.add(students);
//     }
//     await Future.delayed(Duration(seconds: 5));
//     return studentsList;
//   }
//
//   // Delete  student method
//
//   Future<int> deleteStudent(int id) async {
//     Database db = await database1;
//     final result = await db.delete(
//       studentTableName,
//       where: 'id=?',
//       whereArgs: [id],
//
//     );
//     return result;
//
//   }
//   // Update student method
//
//   updateUser(StudentModel s) async {
//     Database db = await database1;
//     final result = await db.update(
//       studentTableName,
//       s.toMap(),
//       where: 'id=?',
//       whereArgs: [s.id],
//     );
//     return result;
//   }
// }
