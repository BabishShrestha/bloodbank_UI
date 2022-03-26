import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/util/constants.dart';
import '../../domain/entities/blood_bank.dart';
import 'widgets.dart';

class BloodBank_ViewCard extends StatelessWidget {
  BloodBank bloodBank;
  BloodBank_ViewCard({required this.bloodBank});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
            margin: kCardTileMargin,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedImage(
                    url: bloodBank.image.toString(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 3,
                  child: BloodBankDetails(bloodBank: bloodBank),
                ),
                const Flexible(
                  child: CardIconButton(
                    icon: FontAwesomeIcons.phone,
                  ),
                ),
                const Flexible(
                    child: CardIconButton(
                  icon: FontAwesomeIcons.message,
                )),
              ],
            )));
  }
}

class CardIconButton extends StatelessWidget {
  final IconData? icon;

  const CardIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: kAppBarColor,
      ),
    );
  }
}
