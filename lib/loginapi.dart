import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/widgets/tabsscreen.dart';

import 'clinics.dart';
import 'main.dart';

User( context,email, String password, int roleid) async {
  var url = Uri.https("keralahealthapp.com", "server/api/auth/patient/signin");
  var response = await http.post(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(
          {'emailOrPhone': email, 'password': password, 'roleId': roleid}));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,

    //  final Map<String,dynamic> Userdata = json.decode(response.body);
    //  for ( final data in Userdata.entries ){
    //    print(data.accessToken);
    //  }
    print('response: ${response.body}');
    print("token");
    var extractdata = json.decode(response.body);
    String usertoken = extractdata['accessToken'];
    int UserID = extractdata['userId'];
    print("token of user is ${usertoken} ");
    print("UserId of user is ${UserID} ");

    var prefs = await SharedPreferences.getInstance();
    

    if(prefs.getString('USERTOKEN')!=usertoken)
    {

         print(prefs.getString('USERTOKEN'));
         prefs.setString('USERTOKEN', usertoken);
    }
             print(prefs.getString('USERTOKEN'));

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return Tabsscreen();
    }));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('No user found');
  }
}
