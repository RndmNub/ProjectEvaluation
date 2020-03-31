import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Evaluation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Project Evaluation",
          textScaleFactor: 1,
          style: TextStyle(
              fontSize: (MediaQuery.of(context).size.width * 0.005) +
                  (MediaQuery.of(context).size.height * 0.02)),
        ),
      ),
      drawer: Theme(
        data: ThemeData(canvasColor: Colors.black),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              Card(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fitHeight,
                  )),
                ),
              ),
              Card(
                color: Colors.white,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * 0.01) +
                            (MediaQuery.of(context).size.height * 0.008)),
                    textScaleFactor: 1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Write something about how it works",
            style: TextStyle(
                fontSize: (MediaQuery.of(context).size.width * 0.005) +
                    (MediaQuery.of(context).size.height * 0.02)),
            textScaleFactor: 1,
          ),
        ),
      ),
    );
  }
}
