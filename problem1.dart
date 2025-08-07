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
  students.forEach((student){
    String name = student['name'] as String;
    int score = student['score'] as int;
    printStudentGrade(name,score);
  });
}

void printStudentGrade(String name,int score){
  var grade = getGrade(score);
  print(name+' scores '+score.toString()+' and get Grade '+grade);
}

String getGrade(int score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80 && score <= 89) {
    return 'B';
  } else if (score >= 70 && score <= 79) {
    return 'C';
  } else if (score >= 60 && score <= 69) {
    return 'D';
  } else {
    return 'F';
  }
}