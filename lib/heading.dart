import 'package:flutter/material.dart';

class Heading extends StatefulWidget {
  const Heading({
    Key key,
  }) : super(key: key);

  @override
  _HeadingState createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFFD995),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
          )
        ],
        color: Color(0xFFFFD995),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'COVID-19',
            style: TextStyle(
              fontFamily: 'ProductSans',
              // color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
            ),
          ),
          Text(
            'Live Stats of the Novel Coronavirus Pandemic',
            style: TextStyle(
              fontFamily: 'Sacramento',
              // color: Colors.white,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
