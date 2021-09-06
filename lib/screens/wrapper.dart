import 'package:flutter/material.dart';
import 'package:projecthawk/modules/user.dart';
import 'package:projecthawk/screens/authenticate/authenticate.dart';
import 'package:projecthawk/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
        //return either Home or Authenticate widget 

    if (user == null) {
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}