import 'package:bendemistimm/constant.dart';
import 'package:flutter/material.dart';

import 'home_components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 1,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/menu.png',
            width: aIconSize,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/icons/search.png',
              color: textBlackColor,
              width: aIconSize,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'assets/icons/user.png',
              //color: greyColor,
              width: aIconSize,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: aDefaultPaddin / 2,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.edit)),
    );
  }
}
