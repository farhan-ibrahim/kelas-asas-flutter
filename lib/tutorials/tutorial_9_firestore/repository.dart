import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_flutter_app/tutorials/tutorial_9_firestore/model.dart';

class ContactRepository {
  final contactCollection = FirebaseFirestore.instance.collection('Contacts');

  Future<void> addContact(Contact contact) {
    return contactCollection.add(contact.toJson());
  }

  Future<List<Contact>> getContacts() async {
    final snapshot = await contactCollection.get();

    return snapshot.docs.map((doc) => Contact.fromSnapshot(doc)).toList();
  }

  Future<void> updateContact(Contact contact) {
    return contactCollection.doc(contact.id).update(contact.toJson());
  }

  Future<void> deleteContact(Contact contact) {
    return contactCollection.doc(contact.id).delete();
  }
}
