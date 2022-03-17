// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool v = false;
  bool p1 = true;

  @override
  Widget build(BuildContext context) {
    return (p1)
        ? Scaffold(
            appBar: AppBar(
              title: Text("Learn Coding"),
              leading: Icon(Icons.logo_dev),
            ),
            body: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Image.asset(
                        "assets/images/programming.png",
                        width: 360,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 3),
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.alternate_email),
                                hintText: 'Email ID',
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5, bottom: 2),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.lock),
                                  hintText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon((!v)
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        v = !v;
                                      });
                                    },
                                  )),
                              obscureText: !v,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: TextButton(
                              child: Text(
                                "Forgot Password?",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 17),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                p1 = !p1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: TextButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                onPressed: () {
                                  setState(() {
                                    p1 = !p1;
                                  });
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Row(children: <Widget>[
                              Expanded(
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 15.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 50,
                                    )),
                              ),
                              Text("OR"),
                              Expanded(
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 15.0, right: 10.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 50,
                                    )),
                              ),
                            ]),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                p1 = !p1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 228, 225, 225),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: TextButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.facebook,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                    Text(
                                      "    Login with Facebook",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  setState(() {
                                    p1 = !p1;
                                  });
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "New to Logistics?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 143, 139, 139)),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Screen1();
  }
}


/*Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
 
            Text("OR"),
 
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
          ]),*/


         /* Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Text(
                                    " OR ",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                const Divider(
                                  color: Colors.black,
                                  height: 25,
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    " OR ",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                              ],
                            ),*/