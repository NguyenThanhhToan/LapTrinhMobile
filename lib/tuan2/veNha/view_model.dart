// view_model.dart
import 'models.dart';


String borrowBook(int bookId) {
  final book = books.firstWhere((b) => b.id == bookId);
  if (book.quantity > 0) {
    book.quantity--;
    return 'Đã mượn: ${book.title}';
  } else {
    return 'Sách đã hết!';
  }
}

List<int> selectedBooks = [];

void toggleBookSelection(int bookId) {
  if (selectedBooks.contains(bookId)) {
    selectedBooks.remove(bookId);
  } else {
    selectedBooks.add(bookId);
  }
}

String borrowSelectedBooks() {
  if (selectedBooks.isEmpty) return 'Chưa chọn sách nào!';

  String result = '';
  for (var bookId in selectedBooks) {
    final book = books.firstWhere((b) => b.id == bookId);
    if (book.quantity > 0) {
      book.quantity--;
      result += 'Đã mượn: ${book.title}\n';
    } else {
      result += 'Sách đã hết: ${book.title}\n';
    }
  }
  selectedBooks.clear();
  return result;
}

List<Book> getAvailableBooks() {
  return books.where((book) => book.quantity > 0).toList();
}

List<Employee> getEmployees() {
  return employees;
}
