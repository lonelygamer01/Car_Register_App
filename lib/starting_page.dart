// ignore_for_file: must_call_super, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables
import 'package:car_register_desktop/starting_form.dart';
import 'package:flutter/material.dart';
import 'dart:io';

String hint_text =
    "If you are using this program as an administrator and don't have and account yet, then choose Sign Up. If you have and account then you know what to do. If you are a Guest you only have the role to view the stored cars by platenumber but not editing it!";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        child: Row(children: <Widget>[
          //Log_In_Form(),
          Starting_Form(),
          SizedBox(
            width: 100,
          ),
          Container(
            child: FadeTransition(
              opacity: _animation,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(150), // Image radius
                  child: Image.asset('assets/app_logo.png', fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
