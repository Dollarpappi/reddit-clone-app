

//this will contain all the logic for the firebase calls
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redditclone/core/provider/firebase_providers.dart';

//instead of us getting the instance of the firestore we use the provider
final authRepositoryProvider = Provider(
  //ref allows us to talk with other providers
  (ref)=> AuthRepository(
    firestore: ref.read(firestoreProvider), 
    auth: ref.read(authProvider), 
    googleSignIn: ref.read(googleSignInProvider))
);

class AuthRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
 final GoogleSignIn _googleSignIn;

 AuthRepository({
  //we created new instances because we can do this. and assign to private varables
  required FirebaseFirestore firestore,
  required FirebaseAuth auth,
  required GoogleSignIn googleSignIn,
  //assigning the private variables
  }) : _auth =auth, 
       _firestore = firestore, 
       _googleSignIn = googleSignIn;

 //google signin function
  void signInWithGoogle()async{
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final googleAuth = (await googleUser?.authentication);
      //create user credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      //store user credential to firebase
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      print(userCredential.user?.email);
    } catch (e) {
      print(e);
    }
  }
}