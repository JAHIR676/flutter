import 'package:first_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Container(
          color: Colors.blue[800],
          child: ListView(
            children: [
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
                hoverColor: Colors.white70,
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                  color: Colors.white,
                ),
                title: Text(
                  "Railway",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.flight,
                  color: Colors.white,
                ),
                title: Text(
                  "Flight",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(
                  Icons.local_offer_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Offer Zone",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
                title: Text(
                  "Cart",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.bag,
                  color: Colors.white,
                ),
                title: Text(
                  "My Order",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "My Account",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ),
                title: Text(
                  "Notification",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
                title: Text(
                  "Loved Products",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.share,
                  color: Colors.white,
                ),
                title: Text(
                  "Shared Products",
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
