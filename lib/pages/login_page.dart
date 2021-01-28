import 'package:Helloflutter/pages/my_home_page.dart';
import 'package:Helloflutter/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/Login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Login Page", style: TextStyle(color: Colors.white))),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/florian-olivo-4hbJ-eymZ1o-unsplash.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                              controller: _userNameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Enter Email",
                                  labelText: "Username:")),
                          SizedBox(height: 20),
                          TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password:")),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            onPressed: () {
                              Constants.prefs.setBool("LoggedIn", true);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));
                              Navigator.pushReplacementNamed(context, HomePage.routeName);
                            },
                            child: Text("Sign In"),
                            color: Colors.orange,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            )
          ],
        ));
  }
}
