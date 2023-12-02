// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future SignIn(
  BuildContext context,
  { required String email,
  required String password,}
) async {
  try {
    // ignore: unused_local_variable
    User? user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password))
        .user;
  } catch (e) {
    log('error $e');
    return null;
  }
}

Future signOut () async{
  try {
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    log('error $e');
  }
}