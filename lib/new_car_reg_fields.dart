// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class New_Car_Reg_Fields extends StatefulWidget {
  const New_Car_Reg_Fields({Key? key}) : super(key: key);

  @override
  State<New_Car_Reg_Fields> createState() => _New_Car_Reg_FieldsState();
}

class _New_Car_Reg_FieldsState extends State<New_Car_Reg_Fields> {
  var brand = TextEditingController();
  var model = TextEditingController();
  var car_class = TextEditingController();
  var year = TextEditingController();
  var type = TextEditingController();
  var color = TextEditingController();
  var weight = TextEditingController();
  var gearbox = TextEditingController();
  var engine = TextEditingController();
  var hp = TextEditingController();
  var km = TextEditingController();
  var platenumber = TextEditingController();
  var condition = TextEditingController();
  var owner_first = TextEditingController();
  var owner_last = TextEditingController();

  textfield_builder(var controller, String hint) {
    return Container(
      width: 230,
      height: 40,
      child: TextField(
        controller: controller,
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
            hintText: hint,
            hintStyle: TextStyle(
                fontSize: 20.0, color: Color.fromARGB(255, 103, 7, 120))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 850,
      height: 370,
      //decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              textfield_builder(brand, "The brand of the car"),
              SizedBox(height: 10),
              textfield_builder(model, "The model of the car"),
              SizedBox(height: 10),
              textfield_builder(car_class, "The class of the car"),
              SizedBox(height: 10),
              textfield_builder(year, "The year of built"),
              SizedBox(height: 10),
              textfield_builder(type, "The type of the car"),
              SizedBox(height: 10),
              textfield_builder(color, "The color of the car"),
              SizedBox(height: 10),
              textfield_builder(weight, "The weight of the car"),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(width: 50),
          Column(children: [
            SizedBox(height: 10),
            textfield_builder(gearbox, "Gearbox of the car"),
            SizedBox(height: 10),
            textfield_builder(engine, "Engine type of the car"),
            SizedBox(height: 10),
            textfield_builder(hp, "Horsepower of the car"),
            SizedBox(height: 10),
            textfield_builder(km, "Kilometers in the car"),
            SizedBox(height: 10),
            textfield_builder(platenumber, "Plate-number of the car"),
            SizedBox(height: 10),
            textfield_builder(condition, "Condition of the car"),
            SizedBox(height: 10),
            textfield_builder(owner_first, "First name of owner"),
            SizedBox(height: 10),
            textfield_builder(owner_last, "Last name of owner"),
          ]),
        ],
      ),
    );
  }
}
