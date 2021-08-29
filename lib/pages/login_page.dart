import 'package:first_app/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint("Jahir");
    };

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Username",
                          labelText: "Username"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Password",
                          labelText: "Password"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        formkey.currentState!.validate();
                      });
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurple,
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(200, 40)),
                  // ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    child: RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                            text: "Register",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                      ],
                      recognizer: _gestureRecognizer),
                ))),
          ],
        ),
      ),
    );
  }
}
