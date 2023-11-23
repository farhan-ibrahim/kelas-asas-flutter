import 'package:flutter/material.dart';
import 'package:my_flutter_app/tutorials/tutorial_8_navigation/add_contact_page.dart';
import 'package:my_flutter_app/tutorials/tutorial_8_navigation/homepage.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const HomePage(),
      '/add': (context) => const AddContactPage(),
    },
  ));
}
