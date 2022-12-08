// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture/constants.dart';

class FavouriteButton extends StatelessWidget {
  final double radius;
  const FavouriteButton({
    Key? key,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: mainwhite,
        shape: BoxShape.circle,
      ),
      child: FaIcon(
        FontAwesomeIcons.heart,
        size: radius / 2 + 5,
      ),
    );
  }
}
