import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey,
                child: Column(
                  children: [
                    Text(
                      "Create An Account",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Your Name";
                        } else if (value.length < 2) {
                          return "Atleast Two Character";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Enter First Name",
                          labelText: "First Name"),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Your Name";
                        } else if (value.length < 2) {
                          return "Atleast Two Character";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Enter Last Name",
                          labelText: "Last Name"),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      validator: EmailValidator(errorText: "Enter Valid Email"),
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Enter Your Email",
                          labelText: "Email"),
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      validator: MinLengthValidator(8,
                          errorText: "Minimum 8 Character"),
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Password",
                          labelText: "Password"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        formkey.currentState!.validate();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(60.0),
                      child: Container(
                        width: 40,
                        height: 30,
                        color: Colors.deepPurple,
                      )),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Container(
                        width: 40, height: 30, color: Colors.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
