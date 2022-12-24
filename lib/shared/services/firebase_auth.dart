// ignore_for_file: avoid_print, unused_field

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  //
  Future<AuthService> init() async {
    return this;
  }

  //Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create Account
  Future<void> createAccount(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
      
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  //Login
  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  //LogOut
  Future<void> logOut() async {
    try {
      await _auth.signOut() ;
    } catch (e) {
      print(e);
    }
  }
}
