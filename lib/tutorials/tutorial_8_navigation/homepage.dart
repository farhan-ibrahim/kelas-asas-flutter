import 'package:flutter/material.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/model.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Contact> items = [
    Contact(
        id: "1", name: 'John Doe', company: 'Evonik', phone: '555-555-5555'),
    Contact(
        id: "2", name: 'David Doe', company: 'Samsung', phone: '555-555-5555'),
    Contact(
        id: "3", name: 'Matt Doe', company: 'Allianz', phone: '555-555-5555'),
    Contact(
        id: "4", name: 'Alan Doe', company: 'Spotify', phone: '555-555-5555'),
  ];

  ContactRepository repository = ContactRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
          title: const Text('Hello, World!'),
          backgroundColor: Colors.deepPurple),
      body: ListView(
        children: items
            .map((Contact item) => Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Text(item.name),
                    Text(item.company),
                    Text(item.phone),
                  ]),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
