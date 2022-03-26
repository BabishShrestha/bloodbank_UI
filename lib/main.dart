import 'package:bloodbank_nearby/core/util/constants.dart';
import 'package:flutter/material.dart';

import 'bloodbanknearby/presentation/pages/nearby_blood_bank_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: kAppBarColor),
        scaffoldBackgroundColor: kPrimaryScaffoldColor,
        primaryColor: Colors.white,
      ),
      home: NearbyBloodBankPage(),
    );
  }
}
