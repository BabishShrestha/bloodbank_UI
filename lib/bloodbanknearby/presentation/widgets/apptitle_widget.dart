import 'package:flutter/material.dart';

import '../../../core/util/constants.dart';

class AppTitle_Widget extends StatelessWidget implements PreferredSizeWidget {
  const AppTitle_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {},
      ),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Blood Bank '),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list))
        ],
      ),
      backgroundColor: kAppBarColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
