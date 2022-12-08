import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/widgets/rounded_icon.dart';

class SearchCont extends StatelessWidget {
  const SearchCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: barblack,
        borderRadius: BorderRadius.circular(22),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: darkgrey,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              'Search Items',
              style: b1.copyWith(
                color: darkgrey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: RoundedIcon(
              icon: FontAwesomeIcons.grip,
              color: contgreen,
            ),
          ),
        ],
      ),
    );
  }
}
