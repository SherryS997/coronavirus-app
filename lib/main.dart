import 'package:Coronavirus/info.dart';
import 'package:flutter/material.dart';
import 'heading.dart';

void main() {
  runApp(MaterialApp(
    home: Coronavirus(),
    theme: ThemeData(
      fontFamily: 'ProductSans',
    ),
  ));
}

class Coronavirus extends StatefulWidget {
  @override
  _CoronavirusState createState() => _CoronavirusState();
}

class _CoronavirusState extends State<Coronavirus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F1641),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Heading(),
                  SizedBox(
                    height: 30,
                  ),
                  Info(),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Color(0xFFFFD995),
                    width: double.maxFinite,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'sherryshajimon997@gmail.com',
                          style: TextStyle(
                              fontFamily: 'Sacramento',
                              // color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
