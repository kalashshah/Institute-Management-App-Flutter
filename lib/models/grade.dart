class Person {
  String _name;
  int _age;
  String _roll;

  String getName() {
    return _name;
  }

  int getAge() {
    return _age;
  }

  String getRoll() {
    return _roll;
  }

  void setName(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }

  void setRoll(String roll) {
    _roll = roll;
  }

  Person(this._name, this._age, this._roll);
}

class Student extends Person {
  List<Course> _courses;
  Section _section;

  List<Course> getCourses() {
    return _courses;
  }

  Section getSection() {
    return _section;
  }

  void setCourses(List<Course> courses) {
    _courses = courses;
  }

  void setSection(Section section) {
    _section = section;
  }

  Student(
    String _name,
    int _age,
    String _roll,
    this._section,
    this._courses,
  ) : super(_name, _age, _roll);
}

class Instructor extends Person {
  List<Course> _classes;
  int _salary;

  List<Course> getClasses() {
    return _classes;
  }

  int getSalary() {
    return _salary;
  }

  void setClasses(List<Course> classes) {
    _classes = classes;
  }

  void setSalary(int salary) {
    _salary = salary;
  }

  Instructor(
    String _name,
    int _age,
    String _roll,
    this._classes,
    this._salary,
  ) : super(_name, _age, _roll);
}

class Course {
  String _name;
  int _credits;
  List<Exam> _exams;

  String getName() {
    return _name;
  }

  int getCredits() {
    return _credits;
  }

  List<Exam> getExams() {
    return _exams;
  }

  void setName(String name) {
    _name = name;
  }

  void setCredits(int credits) {
    _credits = credits;
  }

  void setExams(List<Exam> exams) {
    _exams = exams;
  }

  Course(this._name, this._credits, this._exams);
}

class Section {
  String _name;
  int _capacity;
  List<Student> _students;

  String getName() {
    return _name;
  }

  int getCapacity() {
    return _capacity;
  }

  List<Student> getStudents() {
    return _students;
  }

  void setName(String name) {
    _name = name;
  }

  void setCapacity(int capacity) {
    _capacity = capacity;
  }

  void setStudents(List<Student> students) {
    _students = students;
  }

  Section(this._name, this._capacity, this._students);
}

class Grade {
  int _total;
  int _marks;
  int _average;
  double _percentage;

  int getTotal() {
    return _total;
  }

  int getMarks() {
    return _marks;
  }

  int getAverage() {
    return _average;
  }

  double getPercentage() {
    return _percentage;
  }

  void setTotal(int total) {
    _total = total;
  }

  void setMarks(int marks) {
    _marks = marks;
  }

  void setAverage(int average) {
    _average = average;
  }

  void setPercentage(double percentage) {
    _percentage = percentage;
  }

  Grade(this._marks, this._total, this._average)
      : _percentage = _marks / _total * 100;
}

class Exam {
  String _name;
  String _description;
  Grade _grade;
  Course _course;

  String getName() {
    return _name;
  }

  String getDescription() {
    return _description;
  }

  Grade getGrade() {
    return _grade;
  }

  Course getCourse() {
    return _course;
  }

  void setName(String name) {
    _name = name;
  }

  void setDescription(String description) {
    _description = description;
  }

  void setGrade(Grade grade) {
    _grade = grade;
  }

  void setCourse(Course course) {
    _course = course;
  }

  Exam(this._name, this._description, this._grade, this._course);
}
