import 'package:flutter/material.dart';
import 'package:intershiptest/Widgets/CustomSearchButton.dart';

import '../Widgets/UserTile.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: CustomSearchBar()),
          ],
        ),
        SingleChildScrollView(
          child: Column(
            children: List.generate(
              10,
              (index) {
                return UserTile();
              },
            ),
          ),
        ),
      ],
    );
  }
}
