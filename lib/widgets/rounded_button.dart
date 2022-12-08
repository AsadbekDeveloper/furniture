// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:furniture/constants.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Color color;
  const RoundedButton({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(height),
      ),
      child: Text(
        title,
        style: h2.copyWith(color: mainwhite),
      ),
    );
  }
}
