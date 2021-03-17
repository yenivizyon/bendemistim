import 'package:flutter/material.dart';

import '../../constant.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: aDefaultPaddin),
          // child: Text(
          //   "Anasayfa",
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline5
          //       .copyWith(fontWeight: FontWeight.bold),
          // ),
        ),
        Categories(),
      ],
    );
  }
}
