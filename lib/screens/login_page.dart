import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_catalog/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';

  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                " Welcome  $name",
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
                        hintText: 'Enter username',
                        labelText: 'username',
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter password', labelText: 'password')),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(
                        () {
                          changeButton = true;
                        },
                      );

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      width: changeButton ? 40.0 : 140.0,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[400],
                          borderRadius:
                              BorderRadius.circular(changeButton ? 40.0 : 8.0)),
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done_outline_rounded,
                              color: Colors.white,
                            )
                          : Text('Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                    ),
                  )

                  /*   ElevatedButton(

                  
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue, minimumSize: Size(150, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      )) */
                ]),
              )
            ],
          ),
        ));
  }
}
