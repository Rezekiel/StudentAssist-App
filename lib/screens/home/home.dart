import 'package:flutter/material.dart';
import 'package:projecthawk/services/auth.dart';

class  Home extends StatelessWidget {

  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Hawk Pro'),
        backgroundColor:Colors.grey[1000],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async {
             // await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}