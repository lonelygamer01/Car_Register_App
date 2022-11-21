// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

/*import 'dart:convert';

import 'package:http/http.dart' as http;

Sign_In() {
  Uri url =
      "https://car-register-database-default-rtdb.europe-west1.firebasedatabase.app/data.json"
          as Uri;
  http.post(url,
      body: json.encode({
        'number_of_users': 1,
        'user_1': {
          'name' : name.text,
          'user' : username.text,
          'password' : password.text,
        },
      }));
}
*/

import 'package:flutter/material.dart';

String brand = "Mercedes";
String model = "C";
String car_class = "190";
String year = "1990";
String type = "sedan";
String color = "black";
String weight = "1500";
String gearbox = "manual";
String engine = "diesel";
String hp = "120";
String platenumber = "GHG-188";
String km = "210000";
String condition = "used";
String owner = "Ben Samson";

class Content_widget extends StatefulWidget {
  const Content_widget({Key? key}) : super(key: key);

  @override
  State<Content_widget> createState() => _Content_widgetState();
}

class _Content_widgetState extends State<Content_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brand: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Model: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Class: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Year: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Type: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Color: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Weight(kg): ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brand,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                model,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                car_class,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                year,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                type,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                color,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                weight,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(width: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gearbox type: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Engine type(petrol/diesel...): ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Horsepower: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Platenumber: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Kilometers: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Condition: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                "Owner: ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                gearbox,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                engine,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                hp,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                platenumber,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                km,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                condition,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                owner,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
