import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//https://www.melvinvivas.com/flutter-listview-example-using-data-from-a-rest-api/

class Classes {
  final String name;
  final String location;
  final String time;
  final String date;

  Classes({this.name, this.location, this.time, this.date});

factory Classes.fromJson(Map<String, dynamic>json){
  return Classes(
  name: json['name'],
  location: json['location'],
  time: json['time'],
  date: json['date']
  );
}
}

class UsersListView extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Classes>>(
      future: _fetchUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Classes> data = snapshot.data;
          return _classesListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
  Future<List<Classes>> _fetchUsers() async {

    final usersListAPIUrl = 'http://10.0.2.2:3000/classes/';
    final response = await http.get(usersListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((classes) => new Classes.fromJson(classes)).toList();
    } else {
      throw Exception('Failed to load classes from API');
    }
  }
    ListView _classesListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _classes(data[index].name, data[index].location, data[index].time, data[index].date, Icons.school);
        });
  }
  ListTile _classes(String title, String subtitle, String subtitle2, String subtitle3, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}