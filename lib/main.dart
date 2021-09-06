import 'package:flutter/material.dart';
import 'package:projecthawk/screens/authenticate/sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mongo_dart/mongo_dart.dart' as prefix;
import 'dart:convert';
import 'package:http/http.dart' as http;
//https://www.youtube.com/watch?v=w7OVmgncYPo
//https://inducesmile.com/google-flutter/how-to-refresh-futurebuilder-on-button-click-in-flutter/
//https://flutter-examples.com/flutter-insert-text-input-textfield-data-to-mysql-server/

import 'UsersListView.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'HawkPro',
    theme: ThemeData(primarySwatch: Colors.blue, ),
    home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
SharedPreferences sharedPreferences;
TextEditingController nameController = TextEditingController();
TextEditingController locationController = TextEditingController();
final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
    new GlobalKey<RefreshIndicatorState>();
@override
void initState() {
  super.initState();
  checkLoginStatus();
}
checkLoginStatus() async {
  sharedPreferences = await SharedPreferences.getInstance();
  if(sharedPreferences.getString("token")== null){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SignIn()), 
    (Route<dynamic> route) => false);
  }
}

 dbcall() async {
  String newName = nameController.text;
  String newLocation = locationController.text;
  var api = "http://192.168.1.144:3000/classes";
  var data = {'name': newName, 'location': newLocation};
  var response = await http.post(api, body: data);
  nameController.clear();
   locationController.clear();
}

Future<List<Classes>> _fetchClasses() async {
var response = await http.get("http://192.168.1.144:3000/classes");
}

@override 
Widget build(BuildContext context) {
  return Scaffold( 
    appBar: AppBar(title: Text("Class Information", style: TextStyle(color: Colors.white)),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          sharedPreferences.clear();
          sharedPreferences.commit();
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SignIn()), 
    (Route<dynamic> route) => false);
        },
        child: Text("Logout", style: TextStyle(color: Colors.white), ),
      )
    ],
  ),
  body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20)),
            Container(
              width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Class Name',
              ),
            ),
          ),
          Container (width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: locationController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
            ),
            ),
          RaisedButton(
            onPressed: dbcall,
            child: Text('Add'),
                 
          ),
          RaisedButton(child: Text("Refresh"),
          onPressed: () {
            setState(() {
              _fetchClasses();
            });
          },),
          //Center(
       Expanded(child: UsersListView(),
       )]
  )
  );
}
}