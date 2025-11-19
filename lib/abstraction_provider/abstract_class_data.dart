
import 'package:flutter_assignment_project/abstraction_provider/student_model.dart';



abstract class StudentBase{

  Future<int>saveStudent(StudentDataModel s);
  Future<List>getStudent();
  Future<int> deleteStudent(int id);
  Future<int> updateStudent(StudentDataModel s);
}