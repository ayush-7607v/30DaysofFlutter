import 'dart:ui';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/physics.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://media-exp1.licdn.com/dms/image/C4D03AQFfIUbP4VLiTw/profile-displayphoto-shrink_800_800/0/1656999759786?e=1667433600&v=beta&t=rHL9pb6fpaHaU63Ot4CBePdWw0iOLv8zLbQgfPgtJgI";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 3, 156, 176),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 3, 156, 176)),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 3, 156, 176)),
                  accountName: Text("Ayush Verma"),
                  accountEmail: Text("ayush.ayush7607@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
