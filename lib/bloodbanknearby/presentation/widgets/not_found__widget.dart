import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/util/constants.dart';

class NotFound_Widget extends StatelessWidget {
  const NotFound_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: kBorderColor),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15)),
      height: 300,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Lottie.asset('assets/404-notfound.json')),
    ));
  }
}
