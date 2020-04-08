import 'package:flutter/material.dart';

import 'studentlogin.dart';

PageController _pageController2 = new PageController();
GlobalKey<FormState> _formKey4 = new GlobalKey<FormState>();
String username;
String password;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Switch To Faculty Login",
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * 0.006) +
                            (MediaQuery.of(context).size.height * 0.006),
                        fontFamily: "Poppins"),
                    textScaleFactor: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Student Login",
          style: TextStyle(
              fontSize: (MediaQuery.of(context).size.width * 0.008) +
                  (MediaQuery.of(context).size.height * 0.008),
              color: Colors.black,
              fontFamily: "Poppins"),
          textScaleFactor: 1,
        ),
        backgroundColor: Colors.transparent,
        elevation: 3,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: PageView(
        controller: _pageController2,
        // physics: new NeverScrollableScrollPhysics(),
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey4,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.016) +
                                  (MediaQuery.of(context).size.height * 0.008),
                          fontFamily: "Poppins"),
                      textScaleFactor: 1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.3,
                        right: MediaQuery.of(context).size.width * 0.3,
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Username";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        username = value;
                      },
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.008) +
                                  (MediaQuery.of(context).size.height * 0.004),
                          fontFamily: "Poppins"),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    0.008) +
                                (MediaQuery.of(context).size.height * 0.008),
                            fontFamily: "Poppins"),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.3,
                        right: MediaQuery.of(context).size.width * 0.3,
                        top: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.3),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Password";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        password = value;
                      },
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.008) +
                                  (MediaQuery.of(context).size.height * 0.004),
                          fontFamily: "Poppins"),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    0.008) +
                                (MediaQuery.of(context).size.height * 0.008),
                            fontFamily: "Poppins"),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        labelText: "Enter password",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4,
                        right: MediaQuery.of(context).size.width * 0.4),
                    color: Colors.white,
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey4.currentState.validate()) {
                          _formKey4.currentState.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: (MediaQuery.of(context).size.width *
                                      0.008) +
                                  (MediaQuery.of(context).size.height * 0.008),
                              fontFamily: "Poppins",
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
