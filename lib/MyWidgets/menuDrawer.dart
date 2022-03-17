import 'package:flutter/material.dart';
import 'package:projetb2c/functions/FirestoreHelper.dart';
import 'package:projetb2c/model/Utilisateur.dart';

class myDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myDrawerState();
  }

}

class myDrawerState extends State<myDrawer>{
  late Utilisateur myProfil;
  late String uid;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FirestoreHelper().getIdentifiant().then((String identifiant){
      setState(() {
        uid = identifiant;
        FirestoreHelper().getUtilisateur(uid).then((Utilisateur user){
          setState(() {
            myProfil = user;
          });
        });
      });
    });


    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width/2,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: (myProfil.avatar == null)?NetworkImage("https://voitures.com/wp-content/uploads/2017/06/Kodiaq_079.jpg.jpg"):NetworkImage(myProfil.avatar!)
                )
              ),
            ),
            SizedBox(height: 20,),
            Text("${myProfil.prenom} ${myProfil.nom}"),
            SizedBox(height: 20,),
            Text(myProfil.mail),



          ],
        ),
      )
    );

  }









}