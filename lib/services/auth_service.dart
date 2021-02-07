import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(
   (FirebaseUser user) => user?.uid,
   );

   // Email Password sign up

Future<String> createUserWithEmailAndPassword(String email, String password, String username) async {
  
  final currentUser = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

  //update username

  var userUpdateInfo = UserUpdateInfo();

  userUpdateInfo.displayName = username;
  await currentUser.updateProfile(userUpdateInfo);
  await currentUser.reload();
  return currentUser.uid;
}



// Email password sign in
 Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    return (await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password))
        .uid;
  }

// Sign Out
signOut() {
    return _firebaseAuth.signOut();
  }

// password reset handling 

Future sendPasswordResetEmail(String email) async {
  return _firebaseAuth.sendPasswordResetEmail(email: email);

}

}

class EmailValidator{
  static String validate(String value){
    if(value.isEmpty){
      return "Email cannot be empty";
    }
    return null;
  }
}

class UsernameValidator{
  static String validate(String value){
    if(value.isEmpty){
      return "Username cannot be empty";
    }
    if(value.length < 2){
      return "Username must be at least 2 characters long";
    }
    if(value.length > 50){
      return "Username must be less than 50 characters";
    }
    return null;
  }
}

class PasswordValidator{
  static String validate(String value){
    if(value.isEmpty){
      return "Password cannot be empty";
    }
    return null;
  }
}

