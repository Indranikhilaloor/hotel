import 'package:flutter/material.dart';

import 'package:loginout/constants.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          PopularCard(
            image: "assets/hotel_images/1.jpeg",
            press: () {},
          ),
          PopularCard(
            image: "assets/hotel_images/2.jpeg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          left: Constants.kDefaultPadding,
          top: Constants.kDefaultPadding / 2,
          bottom: Constants.kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
