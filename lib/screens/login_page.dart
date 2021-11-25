import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter username', labelText: 'Username'),
                ),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Enter password', labelText: 'Pass')),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black54),
                    onPressed: () {},
                    child: Text('Login'))
              ]),
            )
          ],
        ));
  }
}
