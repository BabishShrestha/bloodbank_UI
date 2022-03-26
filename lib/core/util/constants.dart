import 'package:flutter/material.dart';

//colors
const kAppBarColor = Color(0xff24627F);
const kUnselectedColor = Colors.grey;
const kPrimaryScaffoldColor = Color(0xffECF7FB);
const kBorderColor = Colors.blueGrey;
const kLocationColor = Colors.green;

//margin and padding
const kAppBarMargin = EdgeInsets.only(bottom: 60, left: 10, right: 10);

const EdgeInsets kCardTileMargin = EdgeInsets.all(15);

//textstyle
const kCardTitleStyle = TextStyle(color: Colors.blue, fontSize: 14);

//border radius
const kClipRRectBorderRaduius = BorderRadius.vertical(top: Radius.circular(30));

//container Decoration
const kCurveHomePageDecoration = BoxDecoration(
  color: kPrimaryScaffoldColor,
  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
);
const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter Nearby Blood Bank',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
      borderSide: BorderSide.none),
);
