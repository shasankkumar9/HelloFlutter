import 'package:Helloflutter/pages/home_page_with_fb.dart';
import 'package:Helloflutter/pages/home_page_with_sb.dart';
import 'package:Helloflutter/pages/login_page.dart';
import 'package:Helloflutter/pages/my_home_page.dart';
import 'package:Helloflutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("LoggedIn") == true
          ? HomePageSB()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
