import 'package:new_project_demo/abstraction_provider/student_model.dart';

abstract class StudentBase{

  saveStudent(StudentModel s);
  getStudent();
  deleteStudent(int id);
  updateStudent(StudentModel s);
}