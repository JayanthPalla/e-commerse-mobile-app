import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance; // used for authentication
FirebaseFirestore firestore =
    FirebaseFirestore.instance; // used for storing data in firestore
User? currentUser = auth.currentUser; // represents the current user

//collections
const usersCollections = "users";
