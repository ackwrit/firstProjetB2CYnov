import 'package:flutter/material.dart';

class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return registerState();
  }

}

class registerState extends State<register>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Inscription"),
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        child:  bodyPage(),
      )

    );
  }


  Widget bodyPage(){
    return Column(
      children: [
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              hintText: "Entrer votre adresse mail",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Entrer votre mot de passe",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              hintText: "Entrer nom",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              hintText: "Entrer prénom",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
            onPressed: (){

              print("Je  suis inscris");
            },
            child: Text("Inscription")
        ),
      ],
    );
  }

}