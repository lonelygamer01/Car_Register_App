// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_brace_in_string_interps, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'starting_page.dart';
import 'firebase_management.dart';

String name = "Daniel";
String gm = "Good morning";
String ga = "Good afternoon";
String ge = "Good evening";
String empty = "";

bool admin_page = true;
bool view_car = false;
bool new_car = false;
bool edit_car = false;
bool edit_admin = false;
bool delete_admin = false;

var search_field = TextEditingController();

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

  show_admin_page() {
    setState(() {
      admin_page = true;
      view_car = false;
      new_car = false;
      edit_car = false;
      edit_admin = false;
      delete_admin = false;
      base = base2;
      search_field.clear();
    });
  }

  show_view_car() {
    setState(() {
      admin_page = false;
      view_car = true;
      new_car = false;
      edit_car = false;
      edit_admin = false;
      delete_admin = false;
    });
  }

  show_new_car() {
    setState(() {
      admin_page = false;
      view_car = false;
      new_car = true;
      edit_car = false;
      edit_admin = false;
      delete_admin = false;
    });
  }

  show_edit_car() {
    setState(() {
      admin_page = false;
      view_car = false;
      new_car = false;
      edit_car = true;
      edit_admin = false;
      delete_admin = false;
    });
  }

  show_edit_admin() {
    setState(() {
      admin_page = false;
      view_car = false;
      new_car = false;
      edit_car = false;
      edit_admin = true;
      delete_admin = false;
    });
  }

  show_delete_admin() {
    setState(() {
      admin_page = false;
      view_car = false;
      new_car = false;
      edit_car = false;
      edit_admin = false;
      delete_admin = true;
    });
  }

  Widget base = Container(decoration: BoxDecoration(color: Colors.black));
  Widget base2 = Container(decoration: BoxDecoration(color: Colors.black));
  Widget not_found = Container(decoration: BoxDecoration(color: Colors.red));
  Widget content = Content_widget();
  search() {
    if (search_field.text == "GHG-188") {
      setState(() {
        base = content;
      });
    } else {
      setState(() {
        base = not_found;
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
                    Visibility(
                        visible: admin_page,
                        child: Column(
                          children: [
                            SizedBox(height: 30),
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
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          width: 2)),
                                  onPressed: () {
                                    show_view_car();
                                  },
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
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
                                          width: 2)),
                                  onPressed: () {},
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        size: 22,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "New car",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
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
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
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
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
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
                                          color:
                                              Color.fromARGB(255, 103, 7, 120),
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
                                            color: Color.fromARGB(
                                                255, 103, 7, 120),
                                            fontSize: 18),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        )),
                    Visibility(
                        visible: view_car,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 450,
                                  height: 50,
                                  child: TextField(
                                    controller: search_field,
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
                                        hintText:
                                            "Enter the platenumber of the car",
                                        hintStyle: TextStyle(
                                            fontSize: 20.0,
                                            color: Color.fromARGB(
                                                255, 103, 7, 120))),
                                  ),
                                ),
                                SizedBox(width: 20),
                                SizedBox(
                                    width: 50,
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
                                        search();
                                      },
                                      child: Icon(
                                        Icons.search_outlined,
                                        color: Color.fromARGB(255, 103, 7, 120),
                                        size: 25,
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                                padding: EdgeInsets.all(20),
                                width: 750,
                                height: 350,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 103, 7, 120))),
                                child: base),
                            SizedBox(height: 20),
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
                                      show_admin_page();
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
                            )
                          ],
                        ))
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
