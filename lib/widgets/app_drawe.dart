import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
          
            accountName: Text('maha abdullah'),
            accountEmail: Text('MAHA@GMAIL.COM'),
            currentAccountPicture: CircleAvatar(),
            // LIST OF USERS IMAGES
            otherAccountsPictures: [
              
              CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.pink),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Log in"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  }
}
