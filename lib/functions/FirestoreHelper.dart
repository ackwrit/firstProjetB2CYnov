
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreHelper{
  //Attributs
  final auth = FirebaseAuth.instance;
  final fire_user = FirebaseFirestore.instance.collection("Utilisateurs");

  //Constructeur

  //Methode
Future inscription({required String mail, required String password,required String prenom}) async{
  UserCredential result = await auth.createUserWithEmailAndPassword(email: mail, password: password);
  User? user = result.user;
  String uid = user!.uid;

}
}