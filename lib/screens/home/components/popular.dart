import 'package:flutter/material.dart';

import 'package:loginout/constants.dart';

import 'package:loginout/hotel_details.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          popular_hotels.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HotelDetailsPage(
                          image: popular_hotels[index].image,
                          hotelname: popular_hotels[index].hotelname,
                          location: popular_hotels[index].location,
                          price: popular_hotels[index].price.toString())));
            },
            child: PopularCard(
                image: popular_hotels[index].image,
                hotelname: popular_hotels[index].hotelname,
                location: popular_hotels[index].location,
                price: popular_hotels[index].price),
          ),
        ),
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
    required this.image,
    required this.hotelname,
    required this.location,
    required this.price,
  }) : super(key: key);
  final String image;
  final String hotelname;
  final String location;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
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
    );
  }
}

class PopularModel {
  const PopularModel({
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

List<PopularModel> popular_hotels = [
  PopularModel(
      image: 'assets/hotel_images/1.jpeg',
      hotelname: 'Empire Estates',
      location: 'USA',
      price: 420),
  PopularModel(
      image: 'assets/hotel_images/2.jpeg',
      hotelname: 'Prime Hotels',
      location: 'Germany',
      price: 450),
  PopularModel(
      image: 'assets/hotel_images/6.jpeg',
      hotelname: 'Baileys Residence',
      location: 'Europe',
      price: 410)
];
