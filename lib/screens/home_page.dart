import 'package:flutter/material.dart';
import 'package:make_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('welcome to flutter '),
        ),
      ),
      drawer: MyDrawer(),
    ));
  }
}
