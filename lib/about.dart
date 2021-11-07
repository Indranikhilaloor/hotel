import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              'About Us',
              style: GoogleFonts.sourceSansPro(
                textStyle: const TextStyle(
                  color: Constants.textColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            color: Constants.buttonColor,
            child: Text(
              'We invest in technology that helps take the friction out of travel, Booking.com seamlessly connects millions of travellers with memorable experiences, a range of transport options and incredible places to stay - from homes to hotels and much more. As one of the world’s largest travel marketplaces for both established brands and entrepreneurs of all sizes, Booking.com enables properties all over the world to reach a global audience and grow their businesses.',
              style: TextStyle(fontSize: 18, color: Constants.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
