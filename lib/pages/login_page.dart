import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,),

            SizedBox(
            height: 20,
          ),
         
          Text("Log In",
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                
                hintText: "Enter Password",
                labelText: "Password"
              ),
            ),
            SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, MyRoutes.homeRoute);
          },
           child: Text("Login"),
           style: TextButton.styleFrom(minimumSize: Size(200, 40)),
          ),
              ],
            ),
          )
          
          
        ],
      ),
    ),);
  }
}