// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print
import 'package:car_register_desktop/starting_page.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Users {
  int? number_of_users;
  List<User1>? user_1;
  List<User2>? user_2;
  List<User3>? user_3;
}

class User1 {
  String? name;
  String? user_name;
  String? password;
}

class User2 {
  String? name;
  String? user_name;
  String? password;
}

class User3 {
  String? name;
  String? user_name;
  String? password;
}

class Sign_Up_Form extends StatefulWidget {
  const Sign_Up_Form({Key? key}) : super(key: key);

  @override
  State<Sign_Up_Form> createState() => _Sign_In_FormState();
}

class _Sign_In_FormState extends State<Sign_Up_Form>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  final name = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final password_again = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    name.dispose();
    username.dispose();
    password.dispose();
    password_again.dispose();
    super.dispose();
  }

  String error_message =
      "The given passwords aren't matching, please correct it!";
  String base_message = "";

  print_data() {
    print(name.text);
    print(username.text);
    print(password.text);
    print(password_again.text);
  }

  check_password_again() {
    if (password.text == password_again.text) {
      print("Passwords are matching");
    } else {
      setState(() {
        base_message = error_message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: EdgeInsets.all(100),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              height: 550,
              width: 550,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: <Widget>[
                SizedBox(height: 10),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      letterSpacing: 5,
                      fontSize: 35,
                      color: Color.fromARGB(255, 103, 7, 120),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 70),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            expands: false,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                hintText: "ex. Bob",
                                hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 103, 7, 120))),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            expands: false,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                hintText: "username",
                                hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 103, 7, 120))),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            expands: false,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                hintText: "password",
                                hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 103, 7, 120))),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            expands: false,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 2,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                hintText: "password again",
                                hintStyle: TextStyle(
                                    fontSize: 20.0,
                                    color: Color.fromARGB(255, 103, 7, 120))),
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
                                color: Color.fromARGB(255, 103, 7, 120),
                                fontSize: 18),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  base_message,
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
                                color: Color.fromARGB(255, 103, 7, 120),
                                width: 2)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Starting_Page()));
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
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  fontSize: 18),
                            )
                          ],
                        )),
                  ),
                ),
              ]),
            ),
            SizedBox(width: 100),
            Container(
              child: FadeTransition(
                opacity: _animation,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(150), // Image radius
                    child:
                        Image.asset('assets/app_logo.png', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
