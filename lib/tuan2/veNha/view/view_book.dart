// view/view_book.dart
import 'package:flutter/material.dart';
import '../view_model.dart';

class ViewBookScreen extends StatelessWidget {
  const ViewBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final availableBooks = getAvailableBooks();

    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách sách')),
      body: ListView.builder(
        itemCount: availableBooks.length,
        itemBuilder: (context, index) {
          final book = availableBooks[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text('${book.author} - ${book.category}'),
            trailing: Text('SL: ${book.quantity}'),
            onTap: () {
              final message = borrowBook(book.id);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
      ),
    );
  }
}
