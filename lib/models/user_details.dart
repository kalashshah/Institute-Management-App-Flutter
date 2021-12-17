import 'package:flutter/material.dart';

class DetailsOfUser {
  int id;

  TextEditingController name;
  TextEditingController email;
  TextEditingController password;
  TextEditingController studentID;
  TextEditingController contactNumber;
  TextEditingController gender;

  String type;
  DetailsOfUser(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.studentID,
      required this.type,
      required this.contactNumber,
      required this.gender});
}
var detailsOfUser = [];
