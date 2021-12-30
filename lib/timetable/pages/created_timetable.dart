// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './student_timetable.dart';
import './timetable_base.dart';
import '../models/tt.dart';


class CreatedTimeTablePage extends StatefulWidget {
  @override
  _CreatedTimeTablePageState createState() => _CreatedTimeTablePageState();
}

class _CreatedTimeTablePageState extends State<CreatedTimeTablePage> {
  String name = "";
  bool changeButton = false;

  final formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
    }

    await Future.delayed(Duration(milliseconds: 1500));
    await Navigator.push(context, MaterialPageRoute(builder: (context) => StudentTimeTablePage(tableData)));
    setState(() {
      changeButton = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        // child: Text("Ab");
        child: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/undraw_Timeline_re_aw6g.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Time Table",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 32),
                      child: Column(children: [                        
                        Material(                        
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          child: InkWell(
                            splashColor: Colors.white,                                                    
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 1500),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(changeButton ? "" : "Batch 2020 (Sem III)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      )),       
                                                             
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TimeTablePage()));
                            },
                          ),
                        )                      
                      ])),
                ],
              )),
        ));
  }
}
