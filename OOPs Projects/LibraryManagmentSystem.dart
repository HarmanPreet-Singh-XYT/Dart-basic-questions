class Library{
  List<Map<String,String>> books = [];
  List<String> students = [];
  void addBook(book){
    books.add({'bookName':book.bookName,'Author':book.Author});
  }
  void registerMember(student){
    students.add(student.name);
  }
  void removeBook(book){
    books.removeWhere((each)=>each['bookName']==book.bookName);
  }
}
class Book{
  String bookName = '';
  String Author = '';
  Book(this.bookName,this.Author);
}
class StudentMember{
  String name = '';
  List<Map<String,String>> borrowedBooks = [];
  StudentMember(this.name);
  void borrowBook(book,library){
    borrowedBooks.add({'bookName':book.bookName,'Author':book.Author});
    library.removeBook(book);
  }
}
void main(){
  var library = Library();
  var book = Book("Dart Programming", "Author A");
  var student = StudentMember("Harmanpreet");
  library.addBook(book);
  library.registerMember(student);
  student.borrowBook(book, library);
  print(student.borrowedBooks.length); // Output: 1

}