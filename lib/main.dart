import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.cyan),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myName = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "Flutter App",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Image.asset("assets/florian-olivo-4hbJ-eymZ1o-unsplash.jpg",
                        height: 200, fit: BoxFit.cover),
                    SizedBox(height: 20),
                    Text(myName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Some Text",
                          labelText: "Name:",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myName = _nameController.text;
            setState(() {
              
            });
          },
          child: Icon(Icons.send, color: Colors.white),
        ),
        drawer: Drawer(
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
        ));
  }
}
