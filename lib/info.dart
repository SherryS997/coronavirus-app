import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'worldData.dart';
import 'countryData.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final String countryurl =
      'https://coronavirus-19-api.herokuapp.com/countries';
  final String worldurl = 'https://coronavirus-19-api.herokuapp.com/all';

  List worldData;
  List countryData;
  @override
  void initState() {
    super.initState();
    this.getJsonWorldData();
    this.getJsonCountryData();
  }

  Future<String> getJsonWorldData() async {
    var worldresponse = await http
        .get(Uri.encodeFull(worldurl), headers: {"Accept": "application/json"});

    print(worldresponse.body);

    setState(() {
      var convertWorldDataToJson = json.decode(worldresponse.body);
      worldData = convertWorldDataToJson['results'];
    });

    return "Success";
  }

  Future<String> getJsonCountryData() async {
    var countryresponse = await http.get(Uri.encodeFull(countryurl),
        headers: {"Accept": "application/json"});

    print(countryresponse.body);

    setState(() {
      var convertCountryDataToJson = json.decode(countryresponse.body);
      countryData = convertCountryDataToJson['countryitems'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
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
      child: FutureBuilder(
          future: getJsonCountryData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: SpinKitDoubleBounce(color: Color(0xFF0F1641)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Loading... Please Wait',
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: <Widget>[
                  Text(
                    'Worldwide',
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  WorldData(worldData: worldData),
                  SizedBox(
                    height: 30,
                  ),
                  CountryData(
                    countryData: countryData,
                  ),
                ],
              );
            }
          }),
    );
  }
}
