import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference brewCollection =
      Firestore.instance.collection('Scanned_Code');

  Future updateUserData(String scanned_code) async {
    return await brewCollection
        .document("User")
        .setData({'Scanned Code': scanned_code});
  }
}
