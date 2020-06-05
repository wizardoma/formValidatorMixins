import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fragments/Login.dart';


class Home  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "LoginState",
        home: Scaffold(
        appBar: AppBar(
        title: Text("Techbek Solutions"),
    leading: IconButton(
    icon: Icon(Icons.menu),
    onPressed: null,
    ),
    ),
    body: Login(),

    ),
    );
  }

}