import 'package:flutter/material.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/model.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactRepository repository = ContactRepository();

  @override
  Widget build(BuildContext context) {
    void onPressDelete(Contact item) async {
      await repository.deleteContact(item);
      setState(() {});
    }

    void onPressEdit(Contact item) {
      Navigator.pushNamed(context, '/edit', arguments: item).then(
        (value) => repository.getContacts().then(
              (value) => setState(() {}),
            ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Contacts'),
        backgroundColor: Colors.deepPurple,
      ),
      body: FutureBuilder<List<Contact>>(
        future: repository.getContacts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!
                  .map(
                    (Contact item) => Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => onPressEdit(item),
                            icon: const Icon(Icons.edit_outlined),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(item.company),
                              Text(item.phone),
                            ],
                          ),
                          IconButton(
                            onPressed: () => onPressDelete(item),
                            icon: const Icon(Icons.delete_outline),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add').then(
            (value) => repository.getContacts().then(
                  (value) => setState(() {}),
                ),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
