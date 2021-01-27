import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Shasank Kumar"),
                  accountEmail: Text("shkumar@email.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1534614971-6be99a7a3ffd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Shasank"),
                subtitle: Text("developer"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("shasankkumar9@email.com"),
                subtitle: Text("email"),
                trailing: Icon(Icons.edit),
              )
            ],
          ),
        );
  }
}