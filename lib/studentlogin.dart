import 'package:flutter/material.dart';

String projectTitle;
String problemStatement;
String faculty;
String projectLink;

GlobalKey<FormState> _formKey1 = new GlobalKey<FormState>();
GlobalKey<FormState> _formKey2 = new GlobalKey<FormState>();
GlobalKey<FormState> _formKey3 = new GlobalKey<FormState>();
PageController _pageController = new PageController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project Submission",
          style: TextStyle(
              fontSize: (MediaQuery.of(context).size.width * 0.008) +
                  (MediaQuery.of(context).size.height * 0.008),
              color: Colors.black,
              fontFamily: "Poppins"),
          textScaleFactor: 1,
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 0, right: 1),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * 0.008) +
                            (MediaQuery.of(context).size.height * 0.008),
                        color: Colors.white,
                        fontFamily: "Poppins"),
                    textScaleFactor: 1,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 1, left: 0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * 0.008) +
                            (MediaQuery.of(context).size.height * 0.008),
                        color: Colors.white,
                        fontFamily: "Poppins"),
                    textScaleFactor: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 3,
        iconTheme: IconThemeData(color: Colors.black),
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
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Log-Out",
                    style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.width * 0.008) +
                            (MediaQuery.of(context).size.height * 0.008),
                        fontFamily: "Poppins"),
                    textScaleFactor: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        // physics: new NeverScrollableScrollPhysics(),
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey1,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Text(
                      "Enter project Details - Phase 1",
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
                          return "Please Enter the Title";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        projectTitle = value;
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
                        labelText: "Project Title",
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
                          return "Please Enter the Problem Statement";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        problemStatement = value;
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
                        labelText: "Problem Statement",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4,
                        right: MediaQuery.of(context).size.width * 0.4,
                        top: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.3),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey1.currentState.validate()) {
                          _formKey1.currentState.save();
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Assign Faculty",
                            style: TextStyle(
                              fontSize: (MediaQuery.of(context).size.width *
                                      0.008) +
                                  (MediaQuery.of(context).size.height * 0.008),
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey2,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Text(
                      "Enter project Details - Phase 2",
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.016) +
                                  (MediaQuery.of(context).size.height * 0.008),
                          fontFamily: "Poppins"),
                      textScaleFactor: 1,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Assigned Faculty: $faculty",
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.008) +
                                  (MediaQuery.of(context).size.height * 0.008),
                          fontFamily: "Poppins"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.3,
                      right: MediaQuery.of(context).size.width * 0.3,
                      top: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.contains("github.com") == false) {
                          return "Link Not Valid";
                        } else if (value.isEmpty) {
                          return "Please Enter the Link";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        projectLink = value;
                      },
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    0.008) +
                                (MediaQuery.of(context).size.height * 0.008),
                            fontFamily: "Poppins"),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        labelText: "Project GitHub Link",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.4,
                        right: MediaQuery.of(context).size.width * 0.4,
                        top: MediaQuery.of(context).size.height * 0.05,
                        bottom: MediaQuery.of(context).size.height * 0.3),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey2.currentState.validate()) {
                          _formKey2.currentState.save();
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Submit for evalutaion",
                            style: TextStyle(
                              fontSize: (MediaQuery.of(context).size.width *
                                      0.008) +
                                  (MediaQuery.of(context).size.height * 0.008),
                              fontFamily: "Poppins",
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey3,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Text(
                      "Scores - Phase 3",
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
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: Text(
                      "Final Scores go Here",
                      style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * 0.008) +
                                  (MediaQuery.of(context).size.height * 0.008),
                          fontFamily: "Poppins"),
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
