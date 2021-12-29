import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class lauchUrlDemo extends StatefulWidget{

  lauchUrlDemo({Key ? key}) : super(key : key);
  final String title = 'Launch URL';

  @override
  _launchUrlDemoState createState() => _launchUrlDemoState();
}

class _launchUrlDemoState extends State<lauchUrlDemo>{

  Future<void> ? _launched;
  String phoneNo = "";
  String _launchUrl = 'https://web.iiit.ac.in/~pratik.kamble/storage/Algorithms/Cormen_Algorithms_3rd.pdf';
  String _launchUrl2 = 'http://cslabcms.nju.edu.cn/problem_solving/images/3/3e/Discrete_Mathematics_and_Its_Applications_%287th_Edition%29.pdf';
  String _launchUrl3 = 'https://prakashgautam.com.np/dipit02/books/rps-michael-byron.pdf';
  String _launchUrl4 = 'https://www.math.ucdavis.edu/~linear/linear-guest.pdf';

  Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
      );
    }else{
      throw "could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Library';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.greenAccent,

              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                  ),
                  Text("Probablity and Statistics", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),),
                  ElevatedButton(
                      onPressed: (){
                        launch(_launchUrl3);
                      },
                      child: Text('OPEN')
                  )
                ],
              ),
            ),
            Card(
              color: Colors.greenAccent,

              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                  ),
                  Text("Linear Algebra", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),),
                  ElevatedButton(
                      onPressed: (){
                        launch(_launchUrl4);
                      },
                      child: Text('OPEN'))
                ],
              ),
            ),
            Card(
              color: Colors.greenAccent,

              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                  ),
                  Text("Discrete Maths", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),),
                  ElevatedButton(
                      onPressed: (){
                        launch(_launchUrl2);
                      },
                      child: Text('OPEN'))
                ],
              ),
            ),
            Card(
              color: Colors.greenAccent,

              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
                  ),
                  Text("Cormen Algorithm", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),),
                  ElevatedButton(
                      onPressed: (){
                        launch(_launchUrl);
                      },
                      child: Text('OPEN')
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}