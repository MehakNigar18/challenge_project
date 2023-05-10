// book.dart - Model class for Book - List of books
class Book {
  final String title;
  final String author;
  final String datePublished;
  final String imageLink;

  Book({
    required this.title,
    required this.author,
    required this.datePublished,
    required this.imageLink,
  });
}

final List<Book> books = [
  Book(
    title: "The Hunger Games",
    author: "Suzanne Collins",
    datePublished: "September 14, 2008",
    imageLink: "https://picsum.photos/200/300/?image=1",
  ),
  Book(
    title: "Harry Potter and the Sorcerer's Stone",
    author: "J.K. Rowling",
    datePublished: "June 26, 1997",
    imageLink: "https://picsum.photos/200/300/?image=5",
  ),
  Book(
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
    datePublished: "July 11, 1960",
    imageLink: "https://picsum.photos/200/300/?image=9",
  ),
  Book(
    title: "The Catcher in the Rye",
    author: "J.D. Salinger",
    datePublished: "July 16, 1951",
    imageLink: "https://picsum.photos/200/300/?image=11",
  ),
  Book(
    title: "1984",
    author: "George Orwell",
    datePublished: "June 8, 1949",
    imageLink: "https://picsum.photos/200/300/?image=15",
  ),
  Book(
    title: "Pride and Prejudice",
    author: "Jane Austen",
    datePublished: "January 28, 1813",
    imageLink: "https://picsum.photos/200/300/?image=19",
  ),
  Book(
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
    datePublished: "April 10, 1925",
    imageLink: "https://picsum.photos/200/300/?image=21",
  ),
  Book(
    title: "One Hundred Years of Solitude",
    author: "Gabriel Garcia Marquez",
    datePublished: "May 30, 1967",
    imageLink: "https://picsum.photos/200/300/?image=25",
  ),
  Book(
    title: "The Lord of the Rings",
    author: "J.R.R. Tolkien",
    datePublished: "July 29, 1954",
    imageLink: "https://picsum.photos/200/300/?image=28",
  ),
  Book(
    title: "The Hitchhiker's Guide to the Galaxy",
    author: "Douglas Adams",
    datePublished: "October 12, 1979",
    imageLink: "https://picsum.photos/200/300/?image=31",
  ),
];
