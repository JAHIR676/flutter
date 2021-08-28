import 'package:flutter/material.dart';

class CreateAccont extends StatefulWidget {
  const CreateAccont({Key? key}) : super(key: key);

  @override
  _CreateAccontState createState() => _CreateAccontState();
}

class _CreateAccontState extends State<CreateAccont> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Text(
        "Create An Account",
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.purple),
      ),
    );
  }
}
