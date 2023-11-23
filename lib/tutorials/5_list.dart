import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<String> items = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
          title: const Text('Hello, World!'),
          backgroundColor: Colors.deepPurple),
      body: Column(
        children: items.map((item) => Text(item)).toList(),
      ),
    );
  }
}

class MyListViewWidget extends StatefulWidget {
  const MyListViewWidget({super.key});

  @override
  State<MyListViewWidget> createState() => _MyListViewWidgetState();
}

class _MyListViewWidgetState extends State<MyListViewWidget> {
  final List<String> items = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
          title: const Text('Hello, World!'),
          backgroundColor: Colors.deepPurple),
      body: ListView(
        children: items.map((item) => Text(item)).toList(),
      ),
    );
  }
}
