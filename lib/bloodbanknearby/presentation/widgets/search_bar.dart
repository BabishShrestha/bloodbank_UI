import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';

class SearchBar extends StatelessWidget {
  final scrolled;
  const SearchBar({
    Key? key,
    this.scrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightShiftOffset = 10;
    double kBottom = 40;
    if (scrolled) {
      heightShiftOffset = 50;
      kBottom = 60;
    }
    return FlexibleSpaceBar(
      titlePadding: EdgeInsets.zero,
      background: Transform.translate(
        offset: Offset(0, heightShiftOffset),
        child: Container(
          width: double.maxFinite,
          margin: kAppBarMargin.copyWith(bottom: kBottom),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle),
          child: searchbar_tile(context),
        ),
      ),
    );
  }

  Row searchbar_tile(BuildContext context) {
    return Row(
      children: [
        TextField(
          textCapitalization: TextCapitalization.sentences,
          decoration: kTextFieldInputDecoration.copyWith(
            contentPadding: const EdgeInsets.all(10),
            isDense: true,
            // fillColor: Colors.yellow,
            constraints: BoxConstraints(
                maxHeight: 100,
                minWidth: 100,
                maxWidth: MediaQuery.of(context).size.width * 0.8),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
