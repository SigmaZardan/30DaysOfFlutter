import 'package:flutter/material.dart';
import 'package:make_catalog/screens/login_page.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.red),

      initialRoute: "/home",

      routes: {"/": (context) => LoginPage(), "/home": (context) => HomePage()},
    );
  }
}
