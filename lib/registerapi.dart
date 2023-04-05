import 'dart:convert';
import 'package:http/http.dart' as http;

 Newuser (String name,int username,String password,int mobile,
String address, int age, String gender, String emailId)
async {


var url = Uri.https('keralahealthapp.com', 'server/api/auth/signup');
var response = await http.post(url,
 headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
body: json.encode( {
  'name': name,
  'userName': mobile,
  'password':password,
  'mobile':mobile,
  'address':address,
  'age':age,
  'roleId':5,
  'gender':gender,
  'emailId':emailId,
  }));
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');


}
