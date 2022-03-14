
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreHelper{
  //Attributs
  final auth = FirebaseAuth.instance;
  final fire_user = FirebaseFirestore.instance.collection("Utilisateurs");

  //Constructeur

  //Methode
Future inscription({required String mail, required String password,required String prenom,required String nom}) async{
  UserCredential result = await auth.createUserWithEmailAndPassword(email: mail, password: password);
  User? user = result.user;
  String uid = user!.uid;
  Map<String,dynamic> map ={
    "NOM":nom,
    "MAIL":mail,
    "PRENOM":prenom
  };
  addUser(uid, map);

  }


addUser(String uid,Map<String,dynamic> map){
  fire_user.doc(uid).set(map);

}



}