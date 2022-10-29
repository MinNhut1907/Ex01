import 'dart:convert';

import 'package:equatable/equatable.dart';

class Class extends Equatable {
  const Class({
    this.teacher,
    this.student,
  });

  final List<Teacher>? teacher;
  final List<Student>? student;

  Class copyWith({
    List<Teacher>? teacher,
    List<Student>? student,
  }) =>
      Class(
        teacher: teacher ?? this.teacher,
        student: student ?? this.student,
      );

  factory Class.fromJson(String str) => Class.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Class.fromMap(Map<String, dynamic> json) => Class(
        teacher: json["teacher"] == null
            ? null
            : List<Teacher>.from(
                json["teacher"].map((x) => Teacher.fromMap(x))),
        student: json["Student"] == null
            ? null
            : List<Student>.from(
                json["Student"].map((x) => Student.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "teacher": List<dynamic>.from(teacher!.map((x) => x.toMap())),
        "Student": student == null
            ? null
            : List<dynamic>.from(student!.map((x) => x.toMap())),
      };

  @override
  List<Object?> get props => [teacher, student];

  @override
  bool? get stringify => true;
}

class MathClass extends Class {
  const MathClass({teacher, student})
      : super(teacher: teacher, student: student);
  void teachMath() {}
}

class EnglishClass extends Class {
  const EnglishClass({teacher, student})
      : super(teacher: teacher, student: student);
  void compose() {}
}

class Student extends Equatable {
  const Student({
    this.lastname,
    this.firstname,
    this.age,
    this.gender,
    this.markofmath,
    this.markofenglish,
  });
  @override
  List<Object?> get props => [
        lastname,
        firstname,
        age,
        gender,
        markofenglish,
        markofmath,
      ];
  @override
  bool? get stringify => true;

  final String? lastname;
  final String? firstname;
  final String? age;
  final String? gender;
  final String? markofmath;
  final String? markofenglish;

  Student copyWith({
    String? lastname,
    String? firstname,
    String? age,
    String? gender,
    String? markofmath,
    String? markofenglish,
  }) =>
      Student(
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        markofmath: markofmath ?? this.markofmath,
        markofenglish: markofenglish ?? this.markofenglish,
      );

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        lastname: json["lastname"],
        firstname: json["firstname"],
        age: json["age"],
        gender: json["gender"],
        markofmath: json["markofmath"],
        markofenglish: json["markofenglish"],
      );

  Map<String, dynamic> toMap() => {
        "lastname": lastname,
        "firstname": firstname,
        "age": age,
        "gender": gender,
        "markofmath": markofmath,
        "markofenglish": markofenglish,
      };
}

class Teacher extends Equatable {
  const Teacher({
    this.lastname,
    this.firstname,
    this.age,
    this.gender,
    this.subject,
  });
  @override
  List<Object?> get props => [
        lastname,
        firstname,
        age,
        gender,
        subject,
      ];

  @override
  bool? get stringify => true;

  final String? lastname;
  final String? firstname;
  final String? age;
  final String? gender;
  final String? subject;

  Teacher copyWith({
    String? lastname,
    String? firstname,
    String? age,
    String? gender,
    String? subject,
  }) =>
      Teacher(
        lastname: lastname ?? this.lastname,
        firstname: firstname ?? this.firstname,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        subject: subject ?? this.subject,
      );

  factory Teacher.fromJson(String str) => Teacher.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Teacher.fromMap(Map<String, dynamic> json) => Teacher(
        lastname: json["lastname"],
        firstname: json["firstname"],
        age: json["age"],
        gender: json["gender"],
        subject: json["subject"],
      );

  Map<String, dynamic> toMap() => {
        "lastname": lastname,
        "firstname": firstname,
        "age": age,
        "gender": gender,
        "subject": subject,
      };
}
