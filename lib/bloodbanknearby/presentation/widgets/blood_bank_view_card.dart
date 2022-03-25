import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../shared/constants.dart';
import '../../domain/entities/blood_bank.dart';

class BloodBank_ViewCard extends StatelessWidget {
  final BloodBank bloodBank;

  const BloodBank_ViewCard({required this.bloodBank});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: bloodBank.image == ""
            ? Center(
                child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: kBorderColor),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15)),
                height: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Lottie.asset('assets/404-notfound.json')),
              ))
            : Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        placeholder: (BuildContext context, url) =>
                            const Center(
                                child: CircularProgressIndicator(
                          color: Colors.green,
                          backgroundColor: Colors.grey,
                        )),
                        fit: BoxFit.cover,
                        imageUrl:
                            'https://media.istockphoto.com/photos/patan-picture'
                            '-id637268486?k=20&m=637268486&s=170667a&w=0&h=0pUzYinL9hLFC8yPRWWCOM0JHqkx-kuu76PdJFbMQI0=',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "${bloodBank.name}\n",
                                style: kCardTitleStyle,
                                children: [
                                  TextSpan(
                                    text:
                                        "Blood Group:  ${bloodBank.blood_group}\n",
                                    style: kCardTitleStyle.copyWith(
                                        fontSize: 14, color: kAppBarColor),
                                  ),
                                  TextSpan(
                                    text: 'Phone Number: ${bloodBank.phone}',
                                    style: kCardTitleStyle.copyWith(
                                        fontSize: 14, color: kAppBarColor),
                                  ),
                                ])),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                          ],
                        )
                      ],
                    ),
                  ],
                ))
        // ListTile(
        //   tileColor: kPrimaryScaffoldColor,
        //   leading: ,

        // ),
        );
  }
}
