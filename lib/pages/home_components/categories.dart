import 'package:bendemistimm/constant.dart';
import 'package:flutter/material.dart';

//stateful widget for categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Gündem", "Ekonomi", "Eğlence", "Spor", "Siyaset"];
  //first item will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: aDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: aDefaultPaddin),
        child: Column(
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textBlackColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: aDefaultPaddin / 2), //top padding=10
              height: 2,
              width: 50,
              color: selectedIndex == index ? Colors.grey : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
