import 'package:cloud_firestore/cloud_firestore.dart';

class Contact {
  final String id;
  final String name;
  final String phone;
  final String company;

  Contact({
    required this.id,
    required this.name,
    required this.phone,
    required this.company,
  });

  toJson() {
    return {
      'id': id,
      'Name': name,
      'Phone': phone,
      'Company': company,
    };
  }

  factory Contact.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final json = document.data()!;

    return Contact(
      id: document.id,
      name: json['Name'],
      phone: json['Phone'],
      company: json['Company'],
    );
  }
}
