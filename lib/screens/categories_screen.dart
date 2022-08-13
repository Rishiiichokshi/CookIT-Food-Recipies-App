import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/Category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(catData.id, catData.title, catData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //width of a tile
        maxCrossAxisExtent: 200,
        //height aspect ratio of the tile
        childAspectRatio: 1.4,
        //distance between both the tiles
        crossAxisSpacing: 20,
        //distance between above and below tiles
        mainAxisSpacing: 20,
      ),
    );
  }
}
