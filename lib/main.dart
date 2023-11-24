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
