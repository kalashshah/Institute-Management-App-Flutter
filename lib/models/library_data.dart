class Book {
  String url;
  String name;

  Book(this.name, this.url);
}

class Author {
  String name;

  Author(this.name);
}

var libraryDetails = [
  Book("Probablity and Statistics", "https://prakashgautam.com.np/dipit02/books/rps-michael-byron.pdf"),
  Book("Linear Algebra", 'https://www.math.ucdavis.edu/~linear/linear-guest.pdf'),
  Book("Discrete Maths", 'http://cslabcms.nju.edu.cn/problem_solving/images/3/3e/Discrete_Mathematics_and_Its_Applications_%287th_Edition%29.pdf'),
  Book("Cormen Algorithm", 'https://web.iiit.ac.in/~pratik.kamble/storage/Algorithms/Cormen_Algorithms_3rd.pdf'),
];
