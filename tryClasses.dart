import 'dart:io';

class Student {
  String? name;
  int? age;
  int? grade;
  List<double> grades;

  Student(this.name, this.age, this.grade, this.grades);

  void AssignGrades(int numberOfGrades) {
    for (int i = 0; i < numberOfGrades; i++) {
      print("Write the grade of the ${i + 1} subject: ");
      String? mark = stdin.readLineSync();
      grades.add(double.parse(mark ?? '50'));
    }
    print("Grades inserted successfully");
    print(grades);
  }

  String calculateGrades() {
    double grade = 0;
    if (grades.isEmpty) {
      return "0.0%";
    }

    for (double oneGrade in grades) {
      grade += oneGrade;
    }

    double precentage = (grade / grades.length);

    return '${precentage.toStringAsFixed(2)}%';
  }
}

void main() {
  List<Student> students = [];

  print("Name: ");
  String? name = stdin.readLineSync();
  print("Age: ");
  String? age = stdin.readLineSync();
  print("Grade: ");
  String? grade = stdin.readLineSync();
  print("Enter numbeer of grades");
  String? numberOfGrades = stdin.readLineSync();
  students.add(
    Student(name, int.parse(age ?? '10'), int.parse(grade ?? '5'), []),
  );

  students[0].AssignGrades(int.parse(numberOfGrades ?? '7'));
  print(students[0].calculateGrades());
}
