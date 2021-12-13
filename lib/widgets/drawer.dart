import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[500],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Bibek Bhujel",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.lato().fontFamily,
                  ),
                ),
                accountEmail: Text(
                  "bhujelbibek82@yahoo.com",
                  style: TextStyle(
                      fontSize: 15, fontFamily: GoogleFonts.lato().fontFamily),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/hulk.jpg')),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text('Home',
                    textScaleFactor: 1.2,
                    style: TextStyle(color: Colors.white))),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text('Profile',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text('Email Me',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
