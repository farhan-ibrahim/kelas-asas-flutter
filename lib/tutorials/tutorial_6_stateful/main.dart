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
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Hello, World!'),
          backgroundColor: Colors.deepPurple),
      body: Column(
        children: [
          const Text('Count'),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count--;
                  });
                },
                child: const Text('Decrement'),
              ),
              Text(_count.toString()),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: const Text('Increment'),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.deepPurple[100],
    );
  }
}
