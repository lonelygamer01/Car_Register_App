// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:car_register_desktop/starting_page.dart';

class Guest_Page extends StatefulWidget {
  const Guest_Page({Key? key}) : super(key: key);

  @override
  State<Guest_Page> createState() => _Guest_PageState();
}

class _Guest_PageState extends State<Guest_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: Column(
              children: [
                Text(
                  "You are using this application as a Guest now!",
                  style: TextStyle(
                      letterSpacing: 3,
                      color: Color.fromARGB(255, 103, 7, 120),
                      fontSize: 35),
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
              ],
            ),
          )),
    );
  }
}
