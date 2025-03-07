// models.dart
class Book {
  final int id;
  final String title;
  final String author;
  final String category;
  int quantity;

  Book(this.id, this.title, this.author, this.category, this.quantity);
}

class Employee {
  final int id;
  final String name; 
  final String role;

  Employee(this.id, this.name, this.role);
}

List<Book> books = [
  Book(1, "Doraemon", "Fujiko F. Fujio", "Truyện tranh", 5),
  Book(2, "Harry Potter", "J.K. Rowling", "Tiểu thuyết", 3),
];

List<Employee> employees = [
  Employee(1, "Nguyễn Văn A", "Thủ thư"),
  Employee(2, "Trần Thị B", "Quản lý"),
];