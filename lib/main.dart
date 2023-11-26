import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/firebase_options.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/add.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/edit.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/get.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    routes: {
      '/': (context) => const HomePage(),
      '/add': (context) => const AddContactPage(),
      '/edit': (context) => EditContactPage(
          contact: ModalRoute.of(context)!.settings.arguments as Contact),
    },
  ));
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  TextEditingController todoController = TextEditingController();

  List todos = [
    "Cuci",
    "Sapu sampah",
    "Buang sampah",
    "Sidai baju",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              TextField(
                controller: todoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What to do ?',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    todos.insert(0, todoController.text);
                  });
                  todoController.clear();
                  FocusScope.of(context).unfocus();
                },
                child: const Text('Add'),
              ),
            ]),
          ),
          Expanded(
            child: ListView(
              children: todos
                  .map((todo) => Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(todo),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  todos.remove(todo);
                                });
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
