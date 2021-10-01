// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/widgets.dart';
// import 'package:manomilan/screens/login.dart';
// import 'package:manomilan/screens/profile_screen.dart';

// class AuthService {
//   handleAuth() {
//     return StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ProfileScreen();
//           } else {
//             return LoginScreen();
//           }
//         });
//   }

//   // Sign In

//   signIn(email, password) {
//     FirebaseAuth.instance
//         .signInWithEmailAndPassword(email: email, password: password)
//         .then((user) => {print("Sign IN" + user.toString())})
//         .catchError((onError) {
//       print("Sign IN error: " + onError);
//     });
//   }

//   // SignOut
//   signOut() {
//     FirebaseAuth.instance.signOut();
//   }
// }
