import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imsystem/faculty/faculty_homepage.dart';
import 'package:imsystem/homepage.dart';

import 'courses.dart';
import './models/user_details.dart';


class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _secureText = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("NOT Validated");
    }
  }

  TextEditingController _nameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _studentIDController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _genderController = TextEditingController();

  String type = "Student";

  var _id = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Registration Form",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Image.asset('assets/images/pic1.png'),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Name is required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Email Address',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Email is required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                suffixIcon: Icon(Icons.security),
                              ),
                              obscureText: _secureText,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required";
                                } else if (value.length > 6) {
                                  return "Password must be of max length 6";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _studentIDController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Student ID',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Student ID is required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _contactController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Contact',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Contact Number is required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: TextFormField(
                              controller: _genderController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                labelText: 'Gender',
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Gender is required";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: DropdownButton<String>(
                              onChanged: (String? newValue) {
                                setState(() {
                                  type = newValue!;
                                });
                              },
                              items: <String>[
                                'Student',
                                'Faculty'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              value: type,
                              hint: Text(
                                "Select your Type: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Builder(
                            builder: (context) => Center(
                                child: RaisedButton(
                                    child: Text("Register"),
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        print("Validated");
                                        _id += 1;
                                        var det = DetailsOfUser(
                                            id: _id,
                                            name: _nameController,
                                            email: _emailController,
                                            password: _passwordController,
                                            studentID: _studentIDController,
                                            type: type,
                                            contactNumber: _contactController,
                                            gender: _genderController);
                                        // print(det.email.text);
                                        // print(det.name.text);
                                        // print(det.password.text);
                                        // print(det.studentID.text);
                                        // print(det.id);
                                        if (type == "Faculty") {
                                          detailsOfUser.add(det);

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeFaculty(detailsOfUser)),
                                          );
                                        } else if (type == "Student") {
                                          detailsOfUser.add(det);

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Home(detailsOfUser)),
                                          );
                                        }
                                      } else {
                                        print("Not Validated");
                                      }
                                    })),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          )),
    );
  }
}
