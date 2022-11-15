// ignore_for_file: must_call_super, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'dart:io';

class Starting_Page extends StatefulWidget {
  const Starting_Page({Key? key}) : super(key: key);

  @override
  State<Starting_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Starting_Page>
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
    super.dispose();
  }

  bool show_starting_menu = true;
  bool show_sign_up_form = false;
  show_sign_in() {
    setState(() {
      show_starting_menu = false;
      show_sign_up_form = true;
    });

    //the function that is trying to swap the base widget to the sign up widget
    /*void sign_up() {
    setState(() {
      content = sign_up_form;
    });
  }*/

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //base widget
    Widget content = Column(
      children: <Widget>[
        SizedBox(
          width: 235,
          height: 50,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 103, 7, 120),
                  backgroundColor: Colors.transparent,
                  side: BorderSide(
                      color: Color.fromARGB(255, 103, 7, 120), width: 2)),
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person_add_alt,
                    color: Color.fromARGB(255, 103, 7, 120),
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sign Up - for editors",
                    style: TextStyle(
                        color: Color.fromARGB(255, 103, 7, 120), fontSize: 18),
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
                  primary: Color.fromARGB(255, 103, 7, 120),
                  backgroundColor: Colors.transparent,
                  side: BorderSide(
                      color: Color.fromARGB(255, 103, 7, 120), width: 2)),
              onPressed: () {},
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Icon(
                    Icons.how_to_reg_outlined,
                    color: Color.fromARGB(255, 103, 7, 120),
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text("Log In - for editors",
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 7, 120),
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
                  primary: Color.fromARGB(255, 103, 7, 120),
                  backgroundColor: Colors.transparent,
                  side: BorderSide(
                      color: Color.fromARGB(255, 103, 7, 120), width: 2)),
              onPressed: () {},
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Icon(
                    Icons.group_add_outlined,
                    color: Color.fromARGB(255, 103, 7, 120),
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text("Continue as Guest",
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 7, 120),
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
              color: Color.fromARGB(255, 103, 7, 120), size: 40),
        )
      ],
    );
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //sign up widget
    Widget sign_up_form = Column(children: <Widget>[
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
          style: TextStyle(fontSize: 20, color: Colors.white),
          expands: false,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 103, 7, 120))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 103, 7, 120))),
              hintText: "username",
              hintStyle: TextStyle(
                  fontSize: 20.0, color: Color.fromARGB(255, 103, 7, 120))),
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
          obscureText: true,
          style: TextStyle(fontSize: 20, color: Colors.white),
          expands: false,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 103, 7, 120))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 103, 7, 120))),
              hintText: "password",
              hintStyle: TextStyle(
                  fontSize: 20.0, color: Color.fromARGB(255, 103, 7, 120))),
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
                    color: Color.fromARGB(255, 103, 7, 120), width: 2)),
            onPressed: () {},
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
                      color: Color.fromARGB(255, 103, 7, 120), fontSize: 18),
                )
              ],
            )),
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
                      color: Color.fromARGB(255, 103, 7, 120), width: 2)),
              onPressed: () {},
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
                        color: Color.fromARGB(255, 103, 7, 120), fontSize: 18),
                  )
                ],
              )),
        ),
      ),
    ]);
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //the scaffold
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
            padding:
                EdgeInsets.only(left: 250, right: 250, top: 20, bottom: 20),
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
                    width: 400,
                    height: 400,
                    child: Column(
                      children: [
                        Visibility(
                            visible: show_sign_up_form,
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
                              SizedBox(height: 30),
                              SizedBox(
                                width: 150,
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
                                      children: <Widget>[
                                        Icon(
                                          Icons.how_to_reg_outlined,
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
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
                                      onPressed: () {},
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.arrow_back,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                        show_sign_in();
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.person_add_alt,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                      onPressed: () {},
                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: <Widget>[
                                          Icon(
                                            Icons.how_to_reg_outlined,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                            ))
                      ],
                    ),
                  ),
                ]))
            //Log_In_Form(),

            //Starting_Form(),
            ),
        backgroundColor: Colors.grey[900],
      );
    }
  }
}
