import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';
import '../../domain/entities/blood_bank.dart';

class BloodBankDetails extends StatelessWidget {
  const BloodBankDetails({
    Key? key,
    required this.bloodBank,
  }) : super(key: key);

  final BloodBank bloodBank;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                text: "${bloodBank.name}\n",
                style: kCardTitleStyle,
                children: [
                  TextSpan(
                    text: "Blood Group:  ${bloodBank.blood_group}\n",
                    style: kCardTitleStyle.copyWith(
                        fontSize: 12, color: kUnselectedColor),
                  ),
                  TextSpan(
                    text: 'Phone Number: ${bloodBank.phone}',
                    style: kCardTitleStyle.copyWith(
                        fontSize: 12, color: kUnselectedColor),
                  ),
                ])),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: kLocationColor,
            ),
            Expanded(
              child: Text(
                '${(bloodBank.location)?.substring(1, 3)} Km away',
                style: kCardTitleStyle.copyWith(
                    fontSize: 12, color: kLocationColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
