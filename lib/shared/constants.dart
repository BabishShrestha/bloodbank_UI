import 'package:flutter/material.dart';

const kAppBarColor = Color(0xff24627F);
const kUnselectedColor = Colors.grey;
const kPrimaryScaffoldColor = Color(0xffECF7FB);
const kBorderColor = Colors.blue;
const kCardTitleStyle = TextStyle(color: Colors.blue, fontSize: 25);
const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Nearby Blood Bank',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none),
);
