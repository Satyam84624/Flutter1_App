import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imgurl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeW3x7jzL-6FZFtwL--f6ZE-86rCPr7V43qQ&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Thor"),
                  accountEmail: Text("thakur.165431@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgurl),
                    ),
                )),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: 
                  Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                  title: 
                  Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                  title: 
                  Text("Mail",
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
