import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projecthawk/screens/home/home.dart';
import 'package:projecthawk/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';

//https://www.youtube.com/watch?v=w7OVmgncYPo
//https://flutter.dev/docs/cookbook/navigation/navigation-basics

class SignIn extends StatefulWidget {
 
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isLoading = false;
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();


  final AuthService  _auth = AuthService();
  //instance of authserivce class from auth.dart

  @override
     
  Widget build(BuildContext context) {
    return Scaffold( //adds appbar
      body: Container(decoration: 
      BoxDecoration(
      gradient: LinearGradient(
      colors: [Colors.black, Colors.teal],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter 
      ),
      ),
    
          child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
          children: <Widget>
          [
          heardSection(),
          textSection(),
          buttonSection(),
          signupSection()
          ],
          )
      ),
      );
  }
signup() async {
  String email = emailController.text;
  String password = passwordController.text;
  var data = {'email': email, 'password': password};
  var response = await http.post("http://192.168.1.144:3000/users", body: data);
  emailController.clear();
   passwordController.clear();
}

signIn(String email, pass)async {
  SharedPreferences sharedPreference = await SharedPreferences.getInstance();
  Map data = {
  'email': email,
  'password': pass
  };
  var jsonResponse = null;

  var response = await http.post("http://192.168.1.144:3000/signin", body: data);
  jsonResponse = json.decode(response.body);
  if (jsonResponse != null){
    setState(() {
      _isLoading= false;
    });
    sharedPreference.setString("token", jsonResponse['token']);
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => MainPage()), 
    (Route<dynamic> route) => false);
  }
else {
  setState((){
    _isLoading = false;
  });
  print(response.body);
}
}
Container buttonSection() {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50.0,
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child:RaisedButton( 
      onPressed:emailController.text == "" || passwordController.text == "" ? null : () {
        setState(() {
        _isLoading= true;
        });
        signIn(emailController.text, passwordController.text);
      },
      elevation: 0.0,
      color: Colors.teal,
      child: Text("Log In", style: TextStyle(color: Colors.white70)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)), 
    ),
 );
 
}
Container signupSection() {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50.0,
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child:RaisedButton( 
      onPressed:
        signup,
      elevation: 15.0,
      color: Colors.teal,
      child: Text("Sign Up", style: TextStyle(color: Colors.white70)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)), 
    ),
 );
 
}
Container textSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: Column(
      children: <Widget>[
        TextField(
        controller: emailController,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white70),
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: Colors.white70),
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.white)
        ),
        ),
        SizedBox(height: 30.0),
        TextField(
        controller: passwordController,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white70),
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: Colors.white70),
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white)
        ),
        obscureText: true,
        ),
      ],
      ),
  );
}
Container heardSection() {
return Container( 
  margin: EdgeInsets.only(top: 50.0),
  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0,
),
child: Text("Hawk Pro",
style: TextStyle(color: Colors.white70,
fontSize: 40.0,
fontWeight: FontWeight.bold)),

);
}
}