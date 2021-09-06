import 'package:mongo_dart/mongo_dart.dart';
//connect database
// https://creativebracket.com/dart-and-mongodb-tutorial-1/
//https://mongodb.github.io/node-mongodb-native/2.0/tutorials/connecting/
main(List<String> arguments) async {
Db db = new Db ('mongodb://admin:capstone2020@localhost:27017/college-database');
await db.open();

}

//login-authentication method 

//signup-insert users