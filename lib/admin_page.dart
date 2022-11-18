// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_brace_in_string_interps, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'starting_page.dart';

String name = "Daniel";
String gm = "Good morning";
String ga = "Good afternoon";
String ge = "Good evening";
String empty = "";

class Admin_Page extends StatefulWidget {
  const Admin_Page({Key? key}) : super(key: key);

  @override
  State<Admin_Page> createState() => _Admin_PageState();
}

class _Admin_PageState extends State<Admin_Page> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  void initState() {
    super.initState();

    DateTime current = DateTime.now();
    if (current.hour < 12) {
      setState(() {
        empty = gm;
      });
    } else if (current.hour < 17) {
      setState(() {
        empty = ga;
      });
    } else {
      setState(() {
        empty = ge;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
        child: Container(
          width: 1100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("${empty} ${name}!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 7, 120),
                          fontSize: 20,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold))),
              Container(
                width: 1000,
                height: 500,
                //decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Container(
                      child: FadeTransition(
                        opacity: _animation,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(80), // Image radius
                            child: Image.asset('assets/app_logo.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: Color.fromARGB(255, 103, 7, 120),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  width: 2)),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Color.fromARGB(255, 103, 7, 120),
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "View car",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 103, 7, 120),
                                    fontSize: 18),
                              )
                            ],
                          )),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: Color.fromARGB(255, 103, 7, 120),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  width: 2)),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.edit_note_outlined,
                                color: Color.fromARGB(255, 103, 7, 120),
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Edit car",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 103, 7, 120),
                                    fontSize: 18),
                              )
                            ],
                          )),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: Color.fromARGB(255, 103, 7, 120),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  width: 2)),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.edit,
                                color: Color.fromARGB(255, 103, 7, 120),
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Edit admin profile",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 103, 7, 120),
                                    fontSize: 18),
                              )
                            ],
                          )),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              primary: Color.fromARGB(255, 103, 7, 120),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 103, 7, 120),
                                  width: 2)),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.delete_outlined,
                                color: Color.fromARGB(255, 103, 7, 120),
                                size: 22,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Delete admin profile",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 103, 7, 120),
                                    fontSize: 18),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 40,
                  width: 112,
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
                                builder: ((context) => Starting_Page())));
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
                            "Menu",
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
        ),
      ),
    );
  }
}
