import 'package:bloodbank_nearby/bloodbanknearby/domain/entities/blood_bank.dart';
import 'package:bloodbank_nearby/bloodbanknearby/presentation/widgets/widgets.dart';
import 'package:bloodbank_nearby/core/util/fetchapi.dart';
import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';

class NearbyBloodBankPage extends StatefulWidget {
  const NearbyBloodBankPage({Key? key}) : super(key: key);

  @override
  State<NearbyBloodBankPage> createState() => _NearbyBloodBankPageState();
}

class _NearbyBloodBankPageState extends State<NearbyBloodBankPage> {
  @override
  Widget build(BuildContext context) {
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
              child: FutureBuilder<List>(
                  future: FetchApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return CustomScrollView(
                        slivers: [
                          //for app name
                          SliverPersistentHeader(
                            delegate: sliverPersistentHeaderDelegate(
                                'Nearby Blood Bank'),
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
                                Map post = snapshot.data![index];
                                BloodBank bloodbank = BloodBank(
                                    name: post['name'],
                                    location: post['address']['geo']['lat'],
                                    phone: post['phone'],
                                    blood_group: 'A+',
                                    image:
                                        'https://cdn.britannica.com/12/130512-004-AD0A7CA4/campus-Riverside-Ottawa-The-Hospital-Ont.jpg');
                                return BloodBank_ViewCard(bloodBank: bloodbank);
                              },
                              childCount: snapshot.data!.length,
                            ),
                          )
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return const NotFound_Widget();
                    } else {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: kAppBarColor,
                      ));
                    }
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
