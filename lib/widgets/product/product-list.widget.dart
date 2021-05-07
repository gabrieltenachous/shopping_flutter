import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;
  ProductList({@required this.scrollDirection});
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      children: [
        ProductCard(
          image: "assets/product-10.png",
          title: "Nike Dry-fit Long Sleeve",
          description: "Nike",
          price: 150,
        ),
        ProductCard(
          image: "assets/product-1.png",
          title: "BeoPlay Speaker",
          description: "Bang and Olufsen",
          price: 755,
        ),
        ProductCard(
          image: "assets/product-2.png",
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: 450,
        ),
        ProductCard(
          image: "assets/product-3.png",
          title: "Smart Bluetooth Speaker",
          description: "Google Inc",
          price: 900,
        ),
      ],
    );
  }
}
