import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'main.dart';


class Clinicslist extends StatefulWidget {
   
  @override
  State<Clinicslist> createState() => _ClinicslistState();
}

class _ClinicslistState extends State<Clinicslist> {
  @override
  void initState() {
    // TODO: implement initState
    Checkuseloggedin(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
     
   
     
     
    );
  }
}


//https://mydoctor.so/server/clinic/list?page=0&size=10&patientApp=true

Future<void> Checkuseloggedin(context) async {
  var prefs = await SharedPreferences.getInstance();
  final usertoken = prefs.getString(USERTOKEN);

   print("token of user is saved in shared preference and used here ${usertoken} ");
   


}