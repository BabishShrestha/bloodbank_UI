import 'package:bloodbank_nearby/bloodbanknearby/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';
import '../../domain/entities/blood_bank.dart';

class NearbyBloodBankPage extends StatelessWidget {
  const NearbyBloodBankPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BloodBank bloodBankexample = BloodBank(
      name: 'ABC Blood Bank',
      location: '3',
      blood_group: 'A+',
      image:
          'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
      phone: 123,
    );

    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: const AppTitle_Widget(),
      backgroundColor: kAppBarColor,
      body: SafeArea(
        child: Stack(children: [
          //container that contains the list body
          Container(
            decoration: kCurveHomePageDecoration,
            child: ClipRRect(
              borderRadius: kClipRRectBorderRaduius,
              child: CustomScrollView(
                slivers: [
                  //for app name
                  SliverPersistentHeader(
                    delegate:
                        sliverPersistentHeaderDelegate('Nearby Blood Bank'),
                    pinned: true,
                  ),
                  //for search bar
                  SliverLayoutBuilder(builder: (context, constraints) {
                    final scrolled = constraints.scrollOffset > 0;
                    return SliverAppBar(
                      primary: true,
                      expandedHeight: 100,
                      backgroundColor: kPrimaryScaffoldColor,
                      flexibleSpace: SearchBar(scrolled: scrolled),
                      floating: true,
                      snap: true,
                    );
                  }),

                  //api list of nearby blood banks
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return BloodBank_ViewCard(
                          bloodBank: bloodBankexample,
                        );
                      },
                      childCount: 100,
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
