// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './Registerscreen.dart';
import 'Loginscreen.dart';
import 'loginapi.dart';
class Homescreen extends StatelessWidget {

final _usercontroller= TextEditingController();
final _passwordcontroller=TextEditingController();

final _loginform=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar:AppBar(title:Text("My Doctor")) ,
    body:Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key:_loginform,
        child: ListView(children: [
          TextFormField(decoration: InputDecoration(
          labelText: "Username/phone",
          hintText: "Enter username or phone",
          prefixIcon: Icon(Icons.verified_user) ,
          suffixIcon: Icon(Icons.verified)),
          controller: _usercontroller,
          validator: (value){
        //      bool emailValid = RegExp(
        //     r"^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)$")
        // .hasMatch(value ?? '');
        // if (!emailValid)
        // {  return "enter valid emailid";
        
        // }
            if(value==null ||value.isEmpty)
            {
              return "Enter name";
            }
            else
            {
              return null;
            }
          },),
         
          SizedBox(width: 50),
        //password field
         TextFormField(decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter password",
          prefixIcon: Icon(Icons.verified_user) ,
          suffixIcon: Icon(Icons.verified)),
          controller: _passwordcontroller,
          obscureText: true,
          validator: (value){
            if(value==null || value.isEmpty)
            {
                return "Enter password";
            }
            else{
              return null;
            }
          },),
          
          SizedBox(height: 50,),
         
         ElevatedButton(style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(800,40),)
          ),onPressed: () {
            if(_loginform.currentState!.validate())
            {
               User(_usercontroller.text,_passwordcontroller.text,5);
             
            }
            else{
              print("error");
            }
          },
          child: Text("Login")),

        ElevatedButton( style: ButtonStyle(
          
          minimumSize: MaterialStateProperty.all(Size(800,40),)
         ) ,   onPressed: ()
         {Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Registerscreen();
          }));
         },
          child: Text("Sign Up")),

       
        ],
      ),
    )
    
    ));
        
    
  }  
}