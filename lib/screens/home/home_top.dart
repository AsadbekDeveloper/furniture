import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/widgets/circular_icon.dart';
import 'package:furniture/widgets/rounded_button.dart';
import 'package:furniture/widgets/rounded_icon.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: darkgrey,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.only(
            top: 80,
            right: 10,
          ),
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/dining-chair.png',
            opacity: const AlwaysStoppedAnimation(0.9),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Find the best',
                            style: h1.copyWith(
                                fontWeight: FontWeight.normal),
                          ),
                          const Text(
                            'Furniture!',
                            style: h1,
                          ),
                        ],
                      ),
                      const RoundedIcon(
                        icon: FontAwesomeIcons.cartShopping,
                        color: mainwhite,
                      ),
                    ],
                  ),
                  Text(
                    'Dinning Chair',
                    style: h3,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  RoundedButton(title: '230\$', color: mainblack),
                  FavouriteButton(radius: 35),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
