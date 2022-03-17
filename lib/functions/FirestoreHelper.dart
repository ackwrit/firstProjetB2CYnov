
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projetb2c/model/Utilisateur.dart';

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

  Future Connect({required String mail, required String password}) async {
    UserCredential result = await auth.signInWithEmailAndPassword(email: mail, password: password);
  }


addUser(String uid,Map<String,dynamic> map){
  fire_user.doc(uid).set(map);

}

//Récupérer l'uuid de la partie authentification
Future <String> getIdentifiant() async{
  String id = auth.currentUser!.uid;
  return id;
}

//Construire un utilisateur de type Utilisateur
Future <Utilisateur> getUtilisateur(String uid) async{
  DocumentSnapshot snapshot = await fire_user.doc(uid).get();
  return Utilisateur(snapshot);

}



}