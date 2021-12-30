import 'package:flutter/material.dart';
import 'package:imsystem/utils/drawer.dart';

class LeaveApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Leave Application")),
        drawer: DrawerWidget(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'No. of Days',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  maxLines: 10,

                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        // child: Icon(Icons.person, size: 40.0, color: Colors.black),
                      ),
                      hintText: "Description.....",
                      hintStyle: TextStyle(),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(new Radius.circular(25.0)),
                      ),
                      labelStyle: TextStyle(color: Colors.black)),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                  // controller: host,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return "Empty value";
                  //   }
                  // },
                ),
              ),
              Container(
                child: Center(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Submit")),
                ),
              )
            ],
          ),
        ));
  }
}
