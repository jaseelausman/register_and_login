import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

 User (String email,String password,int roleid)async
{
 var  url=Uri.https("keralahealthapp.com","server/api/auth/patient/signin");
 var response= await http.post(url,headers: <String, String>
 {
      'Content-Type': 'application/json; charset=UTF-8',
  },
body: json.encode( {
  'emailOrPhone': email,
  'password': password,
  'roleId':roleid
}));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
   
     print('response: ${response.body}');
    
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('No user found');
  }
}


