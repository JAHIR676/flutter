import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,
              ),
              Text("Create An Account",
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold
             ),
              ),
              SizedBox(height: 70,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter First Name",
                  labelText: "First Name"
                  
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Last Name",
                  labelText: "Last Name"
                  
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Email"
                  
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password"
                  
                ),
              ),
              SizedBox(height: 70,
              ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, MyRoutes.signupRoute);
          },
           child: Text("Signup"),
           style: TextButton.styleFrom(minimumSize: Size(200, 40)),
          ),
              
            ],
          ),
        ),
      ),
      
    );
  }
}