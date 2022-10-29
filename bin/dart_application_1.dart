import 'package:dart_application_1/model/class_model.dart';
import 'package:dart_application_1/core/helper_funcs.dart';

void main(List<String> arguments) async {
  final jsonString =
      await readJsonFileToStringJson("/lib/assets/first_class.json");
  final firstClass = Class.fromJson(jsonString);
  print(firstClass.toMap());

  final listTeachers = firstClass.teacher;
  final listStudents = firstClass.student;

  List<Teacher> listEnglishTeacherOfFristClass = [];
  List<Teacher> listMathTeacherOfFristClass = [];
  List<Student> lisStudentOfFristClass = [];

  listTeachers?.forEach((teacher) {
    print(teacher);
    if (teacher.subject == "English") {
      listEnglishTeacherOfFristClass.add(teacher);
    } else {
      listMathTeacherOfFristClass.add(teacher);
    }
  });
  listStudents?.forEach((student) {
    lisStudentOfFristClass.add(student);
  });

  print(listEnglishTeacherOfFristClass.length);
  print(lisStudentOfFristClass.length);
  final classEnglish = EnglishClass(
      teacher: listEnglishTeacherOfFristClass, student: lisStudentOfFristClass);
  final classMath = MathClass(
      teacher: listMathTeacherOfFristClass, student: lisStudentOfFristClass);

  final secondClass = firstClass.copyWith();
  if (firstClass.hashCode == secondClass.hashCode) {
    print("They are the same");
  }

  print(classMath);
  print(classEnglish);
}
