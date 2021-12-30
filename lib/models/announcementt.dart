class Announcements {
  String title;
  String description;
  String date;

  Announcements(
      {required this.title, required this.description, required this.date});
}


Announcements announcement1 = new Announcements(
      title: "End Sem Exam",
      description: "End-Sem exams are coming soon",
      date: "03-01-2022");
  Announcements announcement2 = new Announcements(
      title: "Kreiva Fest",
      description: "Kreiva fest is going to be organised soon. Stay Updated",
      date: "03-01-2022");
  Announcements announcement3 = new Announcements(
      title: "Cerebro Fest",
      description: "Cerebro fest is going to be organised soon. Stay Updated",
      date: "03-01-2022");
  // Announcements announcement4 = new Announcements("Alfaaz Fest",
  //     "Alfaaz fest is going to be organised soon. Stay Updated", "03-01-2022");
  Announcements announcement5 = new Announcements(
      title: "Semester 4",
      description: "Semester 4 is going to start from 17-01-2022",
      date: "03-01-2022");
  Announcements announcement6 = new Announcements(
      title: "College Repopening",
      description: "College is reopening from 17-01-2022",
      date: "03-01-2022");

  var announcementList = [announcement1, announcement2, announcement3, announcement5, announcement6];



