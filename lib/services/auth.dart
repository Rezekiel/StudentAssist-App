import 'package:firebase_auth/firebase_auth.dart';
import 'package:projecthawk/modules/user.dart';
import 'package:http/http.dart' as http;

//package installed in pubsoec.yaml file

class AuthService {
  Future<void> main () async {
  var url = "192.168.33.10/info";
  var response = await http.post(url, body: {'email': email_, 'password': password_});
  }
  static get email_ => null;

  static get password_ => null;
  
  }

  /*
  final FirebaseAuth _auth = FirebaseAuth.instance; //private, only used in this
  //object of class
  //firebase auth object is an instance of firebase auth class- will give us access to all the
  //different properties and methods on this class so we can do things like sign in anon or with an email and
//password or register or sign out etc



//create user object based on FirebasUser

User _userFromFirebaseUser(FirebaseUser user){
  return user != null ? User(uid: user.uid) : null;
}


//auth change user stream
//lets us know if the user signed in or signed out, listens
Stream<User> get user{
  return _auth.onAuthStateChanged
    .map(_userFromFirebaseUser);
}

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously(); //allows us to sign in anon - links upwith backend t login and returns result
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
      // if sign in succeeds, returns user object to signin widget from where methhod is called
    } catch (e) {
      //print error if uncessful
      print(e.toString());
      return null;
    }
  }

  //all methods that will interacti with firebase auth for us

  //method to sign in anon

  //method to sign in with email and password

  //regster with email and passowrd

  //signout

  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}
*/