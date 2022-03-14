import 'package:flutter/material.dart';
import 'package:projetb2c/model/Utilisateur.dart';

class detail extends StatefulWidget{
  Utilisateur? user;
  detail({Utilisateur? user});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return detailState();
  }

}

class detailState extends State<detail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.user!.prenom}  ${widget.user!.nom}"),
        centerTitle: true,
      ),
      body: bodyPage(),
    );
  }
  Widget bodyPage(){
    return Text("Détail de l'utilisateur");
  }
}