import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './register.dart';
import './login.dart';

import './models/user_details.dart';

void main() {
  return runApp(First_Page());
}

class First_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Institute Management System"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                      child: Column(
                    children: [
                      Image.asset('assets/images/pic2.png'),
                      SizedBox(
                        height: 60,
                      ),
                      Builder(
                        builder: (context) => Center(
                            child: RaisedButton(
                                child: Text("Register"),
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {
                                  // ADD BUTTON LOGIC
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()),
                                  );
                                })),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Builder(
                        builder: (context) => Center(
                            child: RaisedButton(
                                child: Text("Login"),
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {
                                  // ADD BUTTON LOGIC
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login(detailsOfUser)),
                                  );
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
