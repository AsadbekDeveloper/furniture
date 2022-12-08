import 'dart:math';

import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/widgets/circular_icon.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../widgets/search_cont.dart';
import 'home_top.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeTop(),
          const SearchCont(),
          Expanded(
            child: StaggeredGridView.countBuilder(
              itemCount: products.length,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              itemBuilder: ((context, index) {
                return ProductCard(
                  index: index,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colors[index % 3],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              Image.asset(
                products[index].image,
                fit: BoxFit.contain,
              ),
              Text(
                products[index].title,
                style: b1,
              ),
              Text(
                '${products[index].price.toStringAsFixed(0)} \$',
                style: h1,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: const FavouriteButton(radius: 25),
        ),
      ],
    );
  }
}
