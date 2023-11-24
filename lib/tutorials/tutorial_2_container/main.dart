import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Hello, World!'),
            backgroundColor: Colors.deepPurple),
        body: Container(
          width: 500,
          height: 500,
          color: Colors.deepPurple[100],
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),

          /// decoration
          child: const Center(
            child: Text('Hello, World!'),
          ),
        ),
        backgroundColor: Colors.deepPurple[100],
      ),
    ),
  );
}
