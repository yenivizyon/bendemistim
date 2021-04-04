import 'package:bendemistimm/constant.dart';
import 'package:bendemistimm/widget/drawer.dart';
import 'package:flutter/material.dart';

import 'home_components/body.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext get context => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Scaffold(
          key: _scaffoldKey,
          body: Body(),
          drawer: DrawerWidget(),
          appBar: buildAppBar(),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black,
              onPressed: () {},
              child: Icon(Icons.edit)),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: primaryColor,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/menu.png',
          width: aIconSize,
        ),
        //onPressed: () => Scaffold.of(context).openDrawer(),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
      ),
      // leading: Icon(
      //   Icons.menu,
      //   color: Colors.black,
      // ),
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
    );
  }
}
