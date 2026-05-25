import "dart:io";

void showStudentsEntries(Map<String?, dynamic> students) {
  for (var student in students.keys) {
    print("$student: ${students[student]}");
  }
}

MapEntry<String?, dynamic> addStudent() {
  List<double> grades = [];
  print("Enter Name: ");
  String? name = stdin.readLineSync();
  print("Enter number of grades: ");
  String? gradesNumber = stdin.readLineSync();
  for (int i = 0; i < int.parse(gradesNumber ?? '4'); i++) {
    print("Enter grade number ${i + 1}: ");
    String? grade = stdin.readLineSync();
    grades.add(double.parse(grade ?? '50'));
  }

  return MapEntry(name, grades);
}

double calculatePrecintage(List<double> grades) {
  if (grades.isEmpty) {
    return 0.0;
  }

  double sumOfGrades = 0;

  for (double grade in grades) {
    sumOfGrades += grade;
  }

  double precentage = sumOfGrades / grades.length;

  return precentage;
}

void main() {
  Map<String?, dynamic> students = {};

  while (true) {
    print("Enter command you need to excute(show, add, calculate): ");

    String? command = stdin.readLineSync();
    String? editedCommand = command?.toLowerCase();

    if (editedCommand == "show") {
      showStudentsEntries(students);
    } else if (editedCommand == "add") {
      var studentEntry = addStudent();
      students[studentEntry.key] = studentEntry.value;
    } else if (editedCommand == "calculate") {
      showStudentsEntries(students);
      print("Enter the name of student to calculate: ");
      String? studentName = stdin.readLineSync();
      double precentage = calculatePrecintage(students[studentName]);
      print("$studentName got ${precentage.toStringAsFixed(2)}%");
    }
  }
}
