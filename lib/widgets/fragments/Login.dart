import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_stateful/UserDto.dart';
import 'package:login_stateful/mixins/ValidationMixins.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> with ValidationMixins {
  final formKey = GlobalKey<FormState>();
  var userDto = UserDto();

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
      )),
      child: Form(
        key: formKey,
        onChanged: () {
          print("form changed");
        },
        child: Center(
          child: Column(
            children: [
              emailField(),
              passwordField(),
              Container(
                margin: EdgeInsets.only(top: 10.0),
              ),
              submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        userDto.email = value;
      },
      decoration: InputDecoration(labelText: "Email", labelStyle: TextStyle()),
    );
  }

  passwordField() {
    return TextFormField(
      obscureText: true,
      validator: validatePassword,
      onSaved: (value) {
        userDto.password = value;
      },
      keyboardType: TextInputType.visiblePassword,
      decoration:
          InputDecoration(labelText: "Password", labelStyle: TextStyle()),
    );
  }

  submitButton() {
    return RaisedButton(
        color: Colors.deepOrange,
        textColor: Colors.white,
        child: Text("Submit"),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
          }
          print(userDto.toString());
        });
  }


}
