import 'dart:convert';

import 'package:flutter/material.dart';
import 'registerapi.dart';
import 'package:http/http.dart' as http;

class Registerscreen extends StatelessWidget {
 

final _namecontroller=TextEditingController();
final _passwordcontroller=TextEditingController();
final _repasswordcontroller=TextEditingController();
final _addresscontroller=TextEditingController();
final _phonecontroller=TextEditingController();
final _emailcontroller=TextEditingController();
final _agecontroller=TextEditingController();
final _bloodgroupcontroller=TextEditingController();
final _gendercontroller=TextEditingController();
final List <String> bloodgroups=['A +ve','A -ve','B +ve','B -ve','AB +ve','AB -ve','O +ve','O -ve'];
String? selectedbloodgroup;
final List<String>gender=['Male','Female'];
String? selectedgender;


final _form= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          
          child: ListView(
          children: [
            TextFormField(
              controller: _namecontroller,
              decoration: InputDecoration(label: Text("Name")),
              textInputAction: TextInputAction.next,
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Enter name";
                }
                else{
                  return null;
                }
              },
              
              ),
            TextFormField(
              controller: _phonecontroller,
              decoration: InputDecoration(label: Text("Mobile number")),
              textInputAction: TextInputAction.next,
              keyboardType:TextInputType.phone ,
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Enter phonenumber";
                }
                else{
                  return null;
                }
              },
              
              ),
               TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(label: Text("Email id")),
              textInputAction: TextInputAction.next,
              keyboardType:TextInputType.emailAddress ,
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Enter email";
                }
                else{
                  return null;
                }
              },
              
              ),
              
            TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(label: Text("Password")),
              textInputAction: TextInputAction.next,
              obscureText: true,
              
             
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please enter name";
                }
                else{
                  return null;
                }}
              ),
            TextFormField(
              controller: _repasswordcontroller,
              decoration: InputDecoration(label: Text("Re-enter Password")),
              textInputAction: TextInputAction.next,
              obscureText: true,
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please enter password";
                }
                else{
                  return null;
                }}
              
              
              
              ),
            TextFormField(
              controller: _addresscontroller,
              decoration: InputDecoration(label: Text("Address")),
              textInputAction: TextInputAction.next,
              maxLines: 3,
              keyboardType: TextInputType.multiline,
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please enter the address";
                }
                else{
                  return null;
                }}
              
              ),
            TextFormField(
              controller: _agecontroller,
              decoration: InputDecoration(label: Text("Age")),
              textInputAction: TextInputAction.next,
            keyboardType:TextInputType.number ,
            validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please enter  age";
                }
                else{
                  return null;
                }}),
                DropdownButtonFormField(decoration: InputDecoration(label: Text("Blood group")),
                  items: bloodgroups.map((e)=>
                DropdownMenuItem(child: Text(e),value: e,),).toList(),
                 onChanged: (val){
                  selectedbloodgroup=val as String;
                }),
           
           
                DropdownButtonFormField(decoration: InputDecoration(label: Text("Gender")),
                  items: gender.map((e) => 
                DropdownMenuItem( child: Text(e),value: e,)).toList(),
                onChanged: (val){
                   selectedgender=val as String;
                },),
            ElevatedButton(onPressed: ()async{
              if(_passwordcontroller.text==_repasswordcontroller.text){
              if (_form.currentState!.validate()){
               Newuser(_namecontroller.text, int.parse(_phonecontroller.text),_passwordcontroller.text,int.parse(_phonecontroller.text),
               _addresscontroller.text,
              int.parse(_agecontroller.text),_gendercontroller.text,_emailcontroller.text);
              }}
              else{
                print("error");
              }
              

            }, child: Text("Register User")
            )
            
          ]),),
      )
      );
    
  }
}
