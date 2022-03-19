import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String profilePhoto;
  String uid;
  String name;
  String email;
  
  User({
    required this.profilePhoto,
    required this.uid,
    required this.name,
    required this.email,
  });
  Map<String, dynamic> toJson() => {
    "profilePhoto": profilePhoto,
    "uid": uid,
    "name": name,
    "email": email,
  };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      profilePhoto: snapshot['profilePhoto'],
      uid: snapshot['uid'],
      name: snapshot['name'],
      email: snapshot['email'],
    );
  }
}
