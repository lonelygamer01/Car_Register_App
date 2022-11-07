// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:car_register_desktop/guest_page.dart';

import 'sign_up_form.dart';
import 'package:car_register_desktop/log_in_form.dart';
import 'package:flutter/material.dart';
import 'starting_page.dart';

class Starting_Form extends StatefulWidget {
  const Starting_Form({Key? key}) : super(key: key);

  @override
  State<Starting_Form> createState() => _Starting_FormState();
}

class _Starting_FormState extends State<Starting_Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
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
          SizedBox(
            width: 235,
            height: 50,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Color.fromARGB(255, 103, 7, 120),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                        color: Color.fromARGB(255, 103, 7, 120), width: 2)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sign_Up_Form()));
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
                      "Sign Up - for editors",
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 7, 120),
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
                    primary: Color.fromARGB(255, 103, 7, 120),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(
                        color: Color.fromARGB(255, 103, 7, 120), width: 2)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Log_In_Form()));
                },
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Guest_Page()));
                },
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
                "If you are using this program as an administrator and don't have and account yet, then choose Sign Up. If you have and account then you know what to do. If you are a Guest you only have the role to view the stored cars by platenumber but not editing it!",
            triggerMode: TooltipTriggerMode.manual,
            showDuration: const Duration(seconds: 1),
            child: Icon(Icons.info_outline_rounded,
                color: Color.fromARGB(255, 103, 7, 120), size: 40),
          )
        ],
      ),
    );
  }
}
