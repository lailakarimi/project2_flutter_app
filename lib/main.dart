import 'package:flutter/material.dart';

void main() {
  runApp(BookCatalogApp());
}

class BookCatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Catalog',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: BookListScreen(),
    );
  }
}

// Simple Book model
class Book {
  final String title;
  final String author;

  Book(this.title, this.author);
}

class BookListScreen extends StatelessWidget {
  // Hardcoded sample book list for Sprint 1
  final List<Book> books = [
    Book("The Alchemist", "Paulo Coelho"),
    Book("Dune", "Frank Herbert"),
    Book("Percy Jackson", "Rick Riordan"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Catalog"),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: EdgeInsets.all(12),
            child: ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
