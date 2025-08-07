/*
 
 
You are given a list of student names and their scores. Write a Dart program that:
Defines a function getGrade(int score) that returns a letter grade (A, B, C, D, or F) based on the score using the following rules:


A for scores 90 and above


B for scores 80-89


C for scores 70-79


D for scores 60-69


F for scores below 60

Also write me printStudentGrade function where it takes studentName and student score as arguments 
and prints out in the following example format:

Alice scores 85 and get Grade B.
Bob scores 72 and get Grade C.
Charlie scores 59 and get Grade F.
Diana scores 93 and get Grade A.

*/

void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Alice', 'score': 85},
    {'name': 'Bob', 'score': 72},
    {'name': 'Charlie', 'score': 59},
    {'name': 'Diana', 'score': 93},
  ];
  students.forEach((student) {
    final String name = student['name'];
    final int score = student['score'];
    printStudentGrade(name, score);
  });
}

void printStudentGrade(String name, int score) {
    final grade = getGrade(score);
  print(name + ' scores ' + score.toString() + ' and get Grade ' + grade.toString() + '.');
}

String getGrade(int score) {
  switch (score ~/ 10) {
    case 10:
    case 9:
      return 'A';
    case 8:
      return 'B';
    case 7:
      return 'C';
    case 6:
      return 'D';
    default:
      return 'F';
  }
}
// Not much to say, can use switch statements and can make variables immutable, redundant type assignment with as in students forEach function. 