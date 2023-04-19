import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'main.dart';
import 'models/clinic_list_model.dart';

class Clinicslist extends StatefulWidget {
  @override
  State<Clinicslist> createState() => _ClinicslistState();
}


var clinicListModel=[];

class _ClinicslistState extends State<Clinicslist> {
  @override
  void initState() {

    // TODO: implement initState
    
  
    super.initState();
    Checkuseloggedin(context);
   
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Clinics")),
        body: ListView.builder(
         itemBuilder:(context, index) {
           return  Card(
            elevation: 5,
             child: ListTile(
                     leading:Text('$index') ,
                     title:Text(clinicListModel[index].clinicName) ,
                     subtitle:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(clinicListModel[index].category),
                          Text(clinicListModel[index].workingTime),

                       ],
                     ) ,
                     isThreeLine: true,

           
             ),
           ) ;//Text(names[index]);
         }, 
         itemCount:clinicListModel.length ,
        
        ));
  }


//https://mydoctor.so/server/clinic/list?page=0&size=10&patientApp=true

Future<void> Checkuseloggedin(context) async {
  var prefs = await SharedPreferences.getInstance();
  final usertoken = prefs.getString('USERTOKEN');

  print(
      "token of user is saved in shared preference and used here ${usertoken} ");

  var url = Uri.https(
      "keralahealthapp.com", "server/clinic/list");
  var response = await http.get(url, headers: <String, String>{
    'Authorization': 'Bearer $usertoken'
    

  });
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200 ) {
    print('response: ${response.body}');
     setState(() {
      clinicListModel = clinicListModelFromJson(response.body);
    
    });
    

    

  }
}
}