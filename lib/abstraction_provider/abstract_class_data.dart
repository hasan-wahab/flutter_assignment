
import '../data_modle/student_modle.dart';

abstract class StudentBase{

  saveStudent(StudentModel s);
  getStudent();
  deleteStudent(int id);
  updateStudent(StudentModel s);
}