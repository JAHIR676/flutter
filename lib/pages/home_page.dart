import 'package:first_app/widgets/buttomnavigation.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: !isSearching
            ? Text(
                "Shoppe",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            : TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search Products Here",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = !this.isSearching;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(FontAwesomeIcons.cartPlus),
              onPressed: () {
                setState(() {});
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Welcome flutter ",
        ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBtmNavBar(),
    );
  }
}
