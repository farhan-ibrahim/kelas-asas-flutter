import 'package:flutter/material.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/model.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/repository.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  ContactRepository repository = ContactRepository();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController companyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
      ),
      body: Center(
        child: Column(children: [
          Row(
            children: [
              const Text('Name: '),
              Expanded(
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a name',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Phone: '),
              Expanded(
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter phone number',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('Company: '),
              Expanded(
                child: TextField(
                  controller: companyController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter company name',
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              await repository
                  .addContact(Contact(
                    name: nameController.text,
                    phone: phoneController.text,
                    company: companyController.text,
                  ))
                  .then((_) => Navigator.pop(context, true));
            },
            child: const Text('Add'),
          ),
        ]),
      ),
    );
  }
}
