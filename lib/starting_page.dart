// ignore_for_file: must_call_super, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'admin_page.dart';

class Starting_Page extends StatefulWidget {
  const Starting_Page({Key? key}) : super(key: key);

  @override
  State<Starting_Page> createState() => _Starting_PageState();
}

class _Starting_PageState extends State<Starting_Page>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  void dispose() {
    _controller.dispose();
    name.dispose();
    username.dispose();
    password.dispose();
    password_again.dispose();
    super.dispose();
  }

  var name = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();
  var password_again = TextEditingController();

  String error_message =
      "The given passwords aren't matching, please correct it!";
  String blank_message = "";
  String success_message = "Registration completed!";
  String failed_message = "Incorrect username or password!";

  check_password_again() {
    if (password.text == password_again.text) {
      setState(() {
        blank_message = success_message;
      });
      /*String url1 =
          "https://car-register-database-default-rtdb.europe-west1.firebasedatabase.app/data.json";
      final url2 = Uri.parse(url1);
      http.post(url2,
          body: );*/

    } else {
      setState(() {
        blank_message = error_message;
      });
    }
  }

  check_log_in() {
    if (username.text == "Daniel" && password.text == "password") {
      setState(() {
        blank_message = "";
      });
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Admin_Page())));
    } else {
      setState(() {
        blank_message = failed_message;
      });
    }
  }

  bool show_starting_menu = true;
  bool show_sign_up_form = false;
  bool show_sign_in_form = false;
  show_sign_up() {
    setState(() {
      show_starting_menu = false;
      show_sign_up_form = true;
      show_sign_in_form = false;
    });
  }

  show_sign_in() {
    setState(() {
      show_starting_menu = false;
      show_sign_in_form = true;
      show_sign_up_form = false;
    });
  }

  show_starting_page() {
    setState(() {
      show_starting_menu = true;
      show_sign_up_form = false;
      show_sign_in_form = false;
      name.clear();
      username.clear();
      password.clear();
      password_again.clear();
    });
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //the scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 250, right: 250, top: 20, bottom: 20),
          child: Container(
              height: 700,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: <Widget>[
                SizedBox(height: 10),
                Container(
                  child: FadeTransition(
                    opacity: _animation,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(70), // Image radius
                        child: Image.asset('assets/app_logo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 35,
                      color: Color.fromARGB(255, 103, 7, 120),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 35),
                Container(
                  //decoration: BoxDecoration(color: Colors.green),
                  width: 450,
                  height: 390,
                  child: Column(
                    children: [
                      Visibility(
                          visible: show_sign_in_form,
                          child: Column(children: <Widget>[
                            SizedBox(height: 10),
                            Text("Enter the username below:",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  fontSize: 20,
                                )),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 50,
                              child: TextField(
                                controller: username,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                                expands: false,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120))),
                                    hintText: "username",
                                    hintStyle: TextStyle(
                                        fontSize: 20.0,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text("Enter the password below:",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  fontSize: 20,
                                )),
                            SizedBox(height: 10),
                            Container(
                              width: 230,
                              height: 50,
                              child: TextField(
                                controller: password,
                                obscureText: true,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                                expands: false,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120))),
                                    hintText: "password",
                                    hintStyle: TextStyle(
                                        fontSize: 20.0,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                              ),
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              width: 150,
                              height: 50,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      primary: Color.fromARGB(255, 103, 7, 120),
                                      backgroundColor: Colors.transparent,
                                      side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          width: 2)),
                                  onPressed: () {
                                    check_log_in();
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.how_to_reg_outlined,
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        size: 22,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Log In",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            fontSize: 18),
                                      )
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              blank_message,
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                height: 40,
                                width: 103,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 103, 7, 120),
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            width: 2)),
                                    onPressed: () {
                                      show_starting_page();
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_back,
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          size: 22,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Back",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120),
                                              fontSize: 18),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ])),
                      Visibility(
                          visible: show_starting_menu,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 235,
                                height: 50,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 103, 7, 120),
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            width: 2)),
                                    onPressed: () {
                                      show_sign_up();
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.person_add_alt,
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          size: 22,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Sign Up - for editors",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120),
                                              fontSize: 18),
                                        )
                                      ],
                                    )),
                              ),
                              SizedBox(height: 30),
                              SizedBox(
                                width: 230,
                                height: 50,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 103, 7, 120),
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            width: 2)),
                                    onPressed: () {
                                      show_sign_in();
                                    },
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: <Widget>[
                                        Icon(
                                          Icons.how_to_reg_outlined,
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          size: 22,
                                        ),
                                        SizedBox(width: 10),
                                        Text("Log In - for editors",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 103, 7, 120),
                                                fontSize: 18))
                                      ],
                                    )),
                              ),
                              SizedBox(height: 30),
                              SizedBox(
                                width: 230,
                                height: 50,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 103, 7, 120),
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            width: 2)),
                                    onPressed: () {},
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: <Widget>[
                                        Icon(
                                          Icons.group_add_outlined,
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          size: 22,
                                        ),
                                        SizedBox(width: 10),
                                        Text("Continue as Guest",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 103, 7, 120),
                                                fontSize: 18))
                                      ],
                                    )),
                              ),
                              SizedBox(height: 50),
                              Tooltip(
                                preferBelow: false,
                                message:
                                    "As an administrator you don't have and account yet, then choose Sign Up. Elso choose Log In. As Guest you only have permission to view the stored cars by platenumber!",
                                triggerMode: TooltipTriggerMode.manual,
                                showDuration: const Duration(seconds: 1),
                                child: Icon(Icons.info_outline_rounded,
                                    color: Color.fromARGB(255, 103, 7, 120),
                                    size: 40),
                              )
                            ],
                          )),
                      Visibility(
                        visible: show_sign_up_form,
                        child: Column(children: <Widget>[
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Enter Your name:",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        fontSize: 20,
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    child: TextField(
                                      controller: name,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      expands: false,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          hintText: "ex. Bob",
                                          hintStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30),
                              Column(
                                children: [
                                  Text("Enter Your username :",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        fontSize: 20,
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 200,
                                    height: 50,
                                    child: TextField(
                                      controller: username,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      expands: false,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          hintText: "username",
                                          hintStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120))),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("Enter a password:",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        fontSize: 20,
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    child: TextField(
                                      controller: password,
                                      obscureText: true,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      expands: false,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          hintText: "password",
                                          hintStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30),
                              Column(
                                children: [
                                  Text("Enter the password again:",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        fontSize: 20,
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 200,
                                    height: 50,
                                    child: TextField(
                                      controller: password_again,
                                      obscureText: true,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      expands: false,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Color.fromARGB(
                                                      255, 103, 7, 120))),
                                          hintText: "password again",
                                          hintStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Color.fromARGB(
                                                  255, 103, 7, 120))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    primary: Color.fromARGB(255, 103, 7, 120),
                                    backgroundColor: Colors.transparent,
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        width: 2)),
                                onPressed: () {
                                  check_password_again();
                                },
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person_add_alt,
                                      color: Color.fromARGB(255, 103, 7, 120),
                                      size: 22,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          fontSize: 18),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            blank_message,
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                              height: 40,
                              width: 103,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      primary: Color.fromARGB(255, 103, 7, 120),
                                      backgroundColor: Colors.transparent,
                                      side: BorderSide(
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          width: 2)),
                                  onPressed: () {
                                    show_starting_page();
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_back,
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        size: 22,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Back",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            fontSize: 18),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ]))),
      backgroundColor: Colors.grey[900],
    );
  }
}
