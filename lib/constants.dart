import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/controllers/auth.dart';
import 'package:tiktok_clone/views/screens/add_vdo.dart';

const pages = [
  Text('Home'),
  Text('Search'),
  AddVDO(),
  Text('Messages'),
  Text('Profile'),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASSE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER
var authController = AuthController.instance;
