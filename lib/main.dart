// ignore_for_file: must_call_super, prefer_const_constructors
import 'package:car_register_desktop/starting_page.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io';
import 'dart:async';

void main() {
  runApp(const Loading());
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
    );
  }
}
// ignore_for_file: avoid_unnecessary_containers

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen>
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
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Starting_Page())));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Container(
                  child: FadeTransition(
                    opacity: _animation,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(200), // Image radius
                        child: Image.asset('assets/app_logo.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 103, 7, 120)),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey[900]);
  }
}

/*class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(),
        MaximizeWindowButton(),
        CloseWindowButton(),
      ],
    );
  }
}*/

//MediaQuery.of(context).size.height * 0.405
//MediaQuery.of(context).size.width * 0.6