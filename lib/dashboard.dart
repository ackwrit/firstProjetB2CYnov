import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return dashBoardState();
  }

}

class dashBoardState extends State<dashBoard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion"),
        centerTitle: true,
      ),
      body: bodyPage(),
    );
  }
  Widget bodyPage(){
    return Text('Je suis connecté');
  }
}