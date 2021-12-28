class Person {
  String name;
  int age;
  String roll;

  Person(this.name, this.age, this.roll);
}

class Student extends Person {
  List<Course> courses;
  Section section;

  Student(
    String name,
    int age,
    String roll,
    this.section,
    this.courses,
  ) : super(name, age, roll);
}

class Instructor extends Person {
  List<Course> classes;
  int salary;

  Instructor(
    String name,
    int age,
    String roll,
    this.classes,
    this.salary,
  ) : super(name, age, roll);
}

class Course {
  String name;
  int credits;
  Instructor instructor;
  List<Assignment> assignments;

  Course(this.name, this.credits, this.instructor, this.assignments);
}

class Section {
  String name;
  int capacity;
  List<Student> students;

  Section(this.name, this.capacity, this.students);
}

class Grade {
  int total;
  int marks;
  double percentage;

  Grade(this.marks, this.total) : percentage = marks / total * 100;
}

class Exam {
  String name;
  String description;
  Grade grade;

  Exam(this.name, this.description, this.grade);
}

class Assignment {
  String name;
  Grade grade;
  DateTime dueDate;

  Assignment(this.name, this.grade, this.dueDate);
}
