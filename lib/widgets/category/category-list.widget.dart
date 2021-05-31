import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-item.widget.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryItem(image: "assets/icon_ux.png"),
          CategoryItem(image: "assets/icon_php.png"),
          CategoryItem(image: "assets/Icon_data_base.png"),
          CategoryItem(image: "assets/icon_java.png"),
          CategoryItem(image: "assets/icon_c#.png"),
        ],
      ),
    );
  }
}
