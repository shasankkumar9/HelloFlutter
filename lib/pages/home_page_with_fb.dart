import 'package:Helloflutter/widgets/drawer.dart';
import 'package:Helloflutter/pages/login_page.dart';
import 'package:Helloflutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
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
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool("LoggedIn", false);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              })
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(child: Text("fetch something"));
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(child: Text("something went wrong"));
              }
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[index]["title"]),
                subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                leading: Image.network(snapshot.data[index]["url"]),
              );
            },
            itemCount: snapshot.data.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myName = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.send, color: Colors.white),
      ),
      drawer: MyDrawer(),
    );
  }
}
