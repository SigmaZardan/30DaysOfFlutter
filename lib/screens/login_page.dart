import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
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

  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  moveToHome(BuildContext context) async {
    setState(
      () {
        changeButton = true;
      },
    );

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  Widget buildTickIcon(BuildContext context) {
    return changeButton
        ? Icon(
            Icons.done_outline_rounded,
            color: Colors.white,
          )
        : Text('Login',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/hey.png',
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Column(children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter username',
                          labelText: 'username',
                        ),
                        controller: _emailController,
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Username cannot be empty'),
                        ]),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Password cannot be empty'),
                          MinLengthValidator(6,
                              errorText:
                                  'Password length cannot be less than 6'),
                          MaxLengthValidator(15,
                              errorText:
                                  'Password length cannto be more than 15'),
                        ]),
                        decoration: const InputDecoration(
                            hintText: 'Enter password', labelText: 'password')),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.blue[400],
                      borderRadius:
                          BorderRadius.circular(changeButton ? 40.0 : 8.0),
                      child: InkWell(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 40.0 : 8.0),
                        onTap: () => moveToHome(context),
                        splashColor: Colors.deepPurple[600],
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 40.0 : 140.0,
                          alignment: Alignment.center,
                          child: buildTickIcon(context),
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
