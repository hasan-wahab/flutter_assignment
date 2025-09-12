

import 'package:flutter_assignment_project/student_crud_opration/student_model.dart';

abstract class StudentBase{

  saveStudent(StudentModel s);
  getStudent();
  deleteStudent(int id);
  updateStudent(StudentModel s);
}