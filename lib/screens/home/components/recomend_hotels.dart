import 'package:flutter/material.dart';
import 'package:loginout/hotel_details.dart';

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
        children: List.generate(
          recomend_hotels.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HotelDetailsPage(
                          image: recomend_hotels[index].image,
                          hotelname: recomend_hotels[index].hotelname,
                          location: recomend_hotels[index].location,
                          price: recomend_hotels[index].price.toString())));
            },
            child: RecommendedHotelCard(
                image: recomend_hotels[index].image,
                hotelname: recomend_hotels[index].hotelname,
                location: recomend_hotels[index].location,
                price: recomend_hotels[index].price),
          ),
        ),
      ),
    );
  }
}

class RecommendedHotelCard extends StatelessWidget {
  const RecommendedHotelCard({
    Key? key,
    required this.image,
    required this.hotelname,
    required this.location,
    required this.price,
  }) : super(key: key);

  final String image, hotelname, location;
  final int price;

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
          Container(
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
                          text: "$hotelname\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: "$location".toUpperCase(),
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
        ],
      ),
    );
  }
}

class ReccommendedModel {
  const ReccommendedModel({
    required this.image,
    required this.hotelname,
    required this.location,
    required this.price,
  });
  final String image;
  final String hotelname;
  final String location;
  final int price;
}

List<ReccommendedModel> recomend_hotels = [
  ReccommendedModel(
      image: 'assets/hotel_images/3.jpeg',
      hotelname: 'Luxury Hotels',
      location: 'Africa',
      price: 440),
  ReccommendedModel(
      image: 'assets/hotel_images/4.jpeg',
      hotelname: 'Evangeline Resorts',
      location: 'Russia',
      price: 400),
  ReccommendedModel(
      image: 'assets/hotel_images/5.jpeg',
      hotelname: 'Larry Home',
      location: 'Europe',
      price: 420)
];
g
