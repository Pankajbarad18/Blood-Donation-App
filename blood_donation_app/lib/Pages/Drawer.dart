// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'globals.dart' as globals;

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      //color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
            
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Admin",
                    textScaleFactor: 1.8,
                  ),
                  accountEmail: Text("Admin12@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/Images/AccountImage1.png"),
                  ))),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.black,
            ),
            title: Text(
              "Emergency Contact",
              textScaleFactor: 1.2,
            ),
            onTap: () {
              print("object");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.map_rounded,
              color: Colors.black,
            ),
            title: Text(
              "Near By Hospital",
              textScaleFactor: 1.2,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline_rounded,
              color: Colors.black,
            ),
            title: Text(
              "Mail Us",
              textScaleFactor: 1.2,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.black,
            ),
            title: Text(
              "Help",
              textScaleFactor: 1.2,
            ),
            onTap: () {},
          ),
        ],
      ),
    ));
  }
}
