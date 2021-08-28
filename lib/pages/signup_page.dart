
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
   GlobalKey<FormState> formkey = new GlobalKey<FormState>();
   final TextEditingController emailController  = new TextEditingController();
   final TextEditingController passwordController = new TextEditingController();
   final TextEditingController firstNameController = new TextEditingController();
   final TextEditingController lastNameController = new TextEditingController();
  
   
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
              Form(
              key:  formkey,
                child: Column(
                  children: [
                    Text("Create An Account",
              style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold
             ),
              ),
              SizedBox(height: 70,
              ),
              TextFormField(
              validator: (value){
                if (value!.isEmpty){
                  return "Enter Your First Name";
                }
                
                else if(value.length<2){
                  return "Least Two Character";
              
                }
                else{
                  return null;
                }


              },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  hintText: "Enter First Name",
                  labelText: "First Name"
                  
                  
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  hintText: "Enter Last Name",
                  labelText: "Last Name"
                  
                ),
              ),
              SizedBox(height: 15),

              TextFormField(
                
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  hintText: "Enter Your Email",
                  labelText: "Email"
                  
                ),
              ),
              SizedBox(height: 15),
            
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  hintText: "Password",
                  labelText: "Password"
                  
                ),
              ),
                  ],
                ),

              ),
              
              Padding(padding: EdgeInsets.all(20.0),
              child: GestureDetector( onTap: (){
                setState(() {
                  formkey.currentState!.validate();
                });
              },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.purple
              
                  ),
                  child: Center(child: Text("Signup",
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                  ),),
                  
                ),
              ),
              )
            ],
          ),
        ),

      ),
      
    );
  }
}