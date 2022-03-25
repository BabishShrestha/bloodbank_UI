import 'package:bloodbank_nearby/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bloodbanknearby/domain/entities/blood_bank.dart';
import 'bloodbanknearby/presentation/widgets/blood_bank_view_card.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: kAppBarColor),
          scaffoldBackgroundColor: kPrimaryScaffoldColor,
          primaryColor: Colors.white),
      home: const BloodBankNearby()));
}

class BloodBankNearby extends StatelessWidget {
  const BloodBankNearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BloodBank bloodBankexample = BloodBank(
      name: 'ABC Blood Bank',
      location: 'Ktm',
      blood_group: 'A+',
      image: 'assets/house.jpg',
      phone: 123,
    );
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kAppBarColor,
        enableFeedback: true,
        unselectedItemColor: kUnselectedColor,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: kPrimaryScaffoldColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add_outlined), label: 'Add post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: 'message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video), label: 'dont'),
        ],
      ),
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Blood Bank '),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
          ],
        ),
        backgroundColor: kAppBarColor,
      ),
      backgroundColor: kAppBarColor,
      //floatingActionButton: MyTabBar(),
      body: SafeArea(
        child: Stack(children: [
          //container that contains the list body
          Container(
            decoration: const BoxDecoration(
              color: kPrimaryScaffoldColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              child: CustomScrollView(
                //physics: FixedExtentScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    expandedHeight: 100,
                    backgroundColor: kPrimaryScaffoldColor,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        width: double.maxFinite,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle),
                        child: Row(
                          children: [
                            TextField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: kTextFieldInputDecoration.copyWith(
                                contentPadding: EdgeInsets.all(30),
                                // isDense: true,
                                // fillColor: Colors.yellow,
                                constraints: BoxConstraints(
                                    maxHeight: 100,
                                    minWidth: 100,
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.8),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Row(children: <Widget>[
                    //   TextField(
                    //       decoration: kTextFieldInputDecoration.copyWith(
                    //           constraints: BoxConstraints(
                    //               maxHeight: 100,
                    //               minWidth: 100,
                    //               maxWidth: MediaQuery.of(context).size.width *
                    //                   0.8))),
                    //   Text('test'),
                    // ]),
                    //
                    // flexibleSpace: FlexibleSpaceBar(
                    //     background: ),
                    floating: true,
                  ),
                  //for search bar

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
