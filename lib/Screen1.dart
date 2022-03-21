// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen1(),
    );
  }
}

class homescreen1 extends StatefulWidget {
  homescreen1({Key? key}) : super(key: key);

  @override
  State<homescreen1> createState() => _homescreen1State();
}

class _homescreen1State extends State<homescreen1> {
  bool sc1 = true;

  @override
  Widget build(BuildContext context) {
    return (sc1)
        ? Scaffold(
            appBar: AppBar(
              title: Text("Welcome Page"),
              leading: IconButton(
                icon: Icon(Icons.keyboard_return_sharp),
                onPressed: () {
                  setState(() {
                    sc1 = !sc1;
                  });
                },
              ),
            ),
            body: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          )
        : MyApp();
  }
}
