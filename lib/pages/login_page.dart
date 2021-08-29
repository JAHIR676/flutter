import 'package:first_app/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = new GlobalKey<FormState>();

  moveToHome() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        Navigator.pushNamed(context, MyRoutes.homeRoute);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pushNamed(context, MyRoutes.signupRoute);
      };
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
                "Login to Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't Empty";
                        } else if (value.length < 3) {
                          return "Username mustbe 3 Character";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Username",
                          labelText: "Username"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't Empty";
                        } else if (value.length < 8) {
                          return "Password mustbe 8 Character";
                        } else
                          return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Enter Password",
                          labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      splashColor: Colors.purple[200],
                      onTap: () => moveToHome(),
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
                  ],
                ),
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                  child: RichText(
                text: TextSpan(
                    text: "Login Using Facebook ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: [
                      WidgetSpan(
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            size: 40,
                            color: Colors.blue,
                          ),
                          alignment: PlaceholderAlignment.middle),
                    ],
                    recognizer: _gestureRecognizer),
              )),
            ),
            Container(
              child: RichText(
                  text: TextSpan(
                      text: "Login Using Google ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        WidgetSpan(
                            child: Icon(
                              FontAwesomeIcons.google,
                              size: 40,
                              color: Colors.blue,
                            ),
                            alignment: PlaceholderAlignment.middle)
                      ],
                      recognizer: _gestureRecognizer)),
            )
          ],
        ),
      ),
    );
  }
}
