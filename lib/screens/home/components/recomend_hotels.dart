import 'package:flutter/material.dart';
import 'package:loginout/screens/details/details_screen.dart';

import 'package:loginout/constants.dart';

class RecommendedHotels extends StatelessWidget {
  const RecommendedHotels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedHotelCard(
            image: "assets/hotel_images/3.jpeg",
            title: "Luxury Hotels",
            country: "Africa",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedHotelCard(
            image: "assets/hotel_images/4.jpeg",
            title: "Evangeline Resorts",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendedHotelCard(
            image: "assets/hotel_images/5.jpeg",
            title: "Larry Homes",
            country: "Europe",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedHotelCard extends StatelessWidget {
  const RecommendedHotelCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: Constants.kDefaultPadding,
        top: Constants.kDefaultPadding / 2,
        bottom: Constants.kDefaultPadding * 2.5,
      ),
      width: size.width * 0.6,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(Constants.kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Constants.kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: Constants.kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Constants.kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
