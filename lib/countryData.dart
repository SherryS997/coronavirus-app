import 'package:flutter/material.dart';

class CountryData extends StatefulWidget {
  CountryData({
    Key key,
    @required this.countryData,
  }) : super(key: key);

  List countryData;

  @override
  _CountryDataState createState() => _CountryDataState();
}

class _CountryDataState extends State<CountryData> {
  var _countryNames = [
    'World',
    'USA',
    'India',
    'Brazil',
    'Russia',
    'France',
    'Italy',
    'UK',
    'Spain',
    'Argentina',
    'Colombia',
    'Germany',
    'Mexico',
    'Poland',
    'Iran',
    'Peru',
    'Turkey',
    'Ukraine',
    'South Africa',
    'Belgium',
    'Indonesia',
    'Netherlands',
    'Iraq',
    'Chile',
    'Czechia',
    'Romania',
    'Bangladesh',
    'Philippines',
    'Canada',
    'Pakistan',
    'Morocco',
    'Saudi Arabia',
    'Switzerland',
    'Israel',
    'Portugal',
    'Austria',
    'Sweden',
    'Hungary',
    'Jordan',
    'Nepal',
    'Serbia',
    'Ecuador',
    'Panama',
    'UAE',
    'Georgia',
    'Bulgaria',
    'Japan',
    'Croatia',
    'Azerbaijan',
    'Belarus',
    'Dominican Republic',
    'Costa Rica',
    'Bolivia',
    'Kuwait',
    'Armenia',
    'Qatar',
    'Lebanon',
    'Kazakhstan',
    'Guatemala',
    'Oman',
    'Slovakia',
    'Moldova',
    'Egypt',
    'Greece',
    'Ethiopia',
    'Honduras',
    'Venezuela',
    'Tunisia',
    'Myanmar',
    'Palestine',
    'Bosnia and Herzegovina',
    'Denmark',
    'Algeria',
    'Kenya',
    'Paraguay',
    'Bahrain',
    'Libya',
    'Slovenia',
    'Lithuania',
    'Kyrgyzstan',
    'Malaysia',
    'Ireland',
    'Uzbekistan',
    'Nigeria',
    'North Macedonia',
    'Singapore',
    'Ghana',
    'Afghanistan',
    'Albania',
    'El Salvador',
    'Norway',
    'S. Korea',
    'Montenegro',
    'Luxembourg',
    'Sri Lanka',
    'Finland',
    'Australia',
    'Cameroon',
    'Uganda',
    'Latvia',
    'Ivory Coast',
    'Sudan',
    'Zambia',
    'Madagascar',
    'Senegal',
    'Mozambique',
    'Angola',
    'Estonia',
    'Namibia',
    'French Polynesia',
    'DRC',
    'Guinea',
    'Maldives',
    'Cyprus',
    'Tajikistan',
    'Botswana',
    'French Guiana',
    'Jamaica',
    'Cabo Verde',
    'Zimbabwe',
    'Malta',
    'Mauritania',
    'Haiti',
    'Gabon',
    'Cuba',
    'Syria',
    'Guadeloupe',
    'Réunion',
    'Belize',
    'Bahamas',
    'Uruguay',
    'Andorra',
    'Hong Kong',
    'Trinidad and Tobago',
    'Eswatini',
    'Rwanda',
    'Malawi',
    'Nicaragua',
    'Congo',
    'Djibouti',
    'Guyana',
    'Martinique',
    'Iceland',
    'Suriname',
    'Mali',
    'Mayotte',
    'Equatorial Guinea',
    'Aruba',
    'CAR',
    'Somalia',
    'Thailand',
    'Gambia',
    'Burkina Faso',
    'South Sudan',
    'Curaçao',
    'Togo',
    'Benin',
    'Guinea-Bissau',
    'Yemen',
    'Sierra Leone',
    'Lesotho',
    'New Zealand',
    'Niger',
    'San Marino',
    'Channel Islands',
    'Chad',
    'Liberia',
    'Liechtenstein',
    'Vietnam',
    'Sint Maarten',
    'Gibraltar',
    'Sao Tome and Principe',
    'Mongolia',
    'Saint Martin',
    'Turks and Caicos',
    'Taiwan',
    'Diamond Princess',
    'Burundi',
    'Papua New Guinea',
    'Eritrea',
    'Monaco',
    'Comoros',
    'Mauritius',
    'Faeroe Islands',
    'Tanzania',
    'Bhutan',
    'Isle of Man',
    'Cambodia',
    'Bermuda',
    'Cayman Islands',
    'Barbados',
    'Saint Lucia',
    'Seychelles',
    'Caribbean Netherlands',
    'St. Barth',
    'Brunei',
    'Antigua and Barbuda',
    'St. Vincent Grenadines',
    'Dominica',
    'British Virgin Islands',
    'Macao',
    'Fiji',
    'Grenada',
    'Laos',
    'New Caledonia',
    'Timor-Leste',
    'Vatican City',
    'Saint Kitts and Nevis',
    'Greenland',
    'Falkland Islands',
    'Solomon Islands',
    'Saint Pierre Miquelon',
    'Montserrat',
    'Western Sahara',
    'Anguilla',
    'MS Zaandam',
    'Marshall Islands',
    'Wallis and Futuna',
    'Samoa',
    'Vanuatu',
    'China'
  ];

  String countryIndex = '1';

  String _currentItemSelected = 'Afghanistan';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 700,
              height: 90,
              padding: EdgeInsets.all(10),
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
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  items: _countryNames.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Center(
                          child: Text(
                        dropDownStringItem,
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    );
                  }).toList(),
                  onChanged: (String selectedCountry) {
                    setState(() {
                      this._currentItemSelected = selectedCountry;
                      countryIndex =
                          (_countryNames.indexOf(selectedCountry) + 1)
                              .toString();
                    });
                  },
                  value: _currentItemSelected,
                  isExpanded: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 800,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ['total_recovered']
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Recovered',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]["total_cases"]
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Cases',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]["total_deaths"]
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Deaths',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ["total_unresolved"]
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Unresolved Cases',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ["total_new_cases_today"]
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'New Cases',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ['total_serious_cases']
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Serious Cases',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ["total_active_cases"]
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'Active Cases',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0F1641),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                          )
                        ],
                        color: Color(0xFF0F1641),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.countryData[0][countryIndex]
                                    ['total_new_deaths_today']
                                .toString(),
                            style: TextStyle(
                              fontFamily: 'ProductSans',
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                          Text(
                            'New Deaths',
                            style: TextStyle(
                              fontFamily: 'Sacramento',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
