import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
      child: Text(
        'Bibek Bhujel',
        style: TextStyle(
            fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      ),
    ));
  }
}
