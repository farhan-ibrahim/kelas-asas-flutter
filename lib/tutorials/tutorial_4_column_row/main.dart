import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Hello, World!'),
          backgroundColor: Colors.deepPurple),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 500,
            color: Colors.deepPurple[100],
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: const Center(
              child: Text('One'),
            ),
          ),
          Container(
            width: 500,
            height: 500,
            color: Colors.deepPurple[200],
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: const Center(
              child: Text('Two'),
            ),
          ),
          Row(
            children: [
              Container(
                width: 500,
                height: 500,
                color: Colors.deepPurple[300],
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                child: const Center(
                  child: Text('Three'),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                color: Colors.deepPurple[400],
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                child: const Center(
                  child: Text('Four'),
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.deepPurple[100],
    );
  }
}
