import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginout/constants.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        profileView() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 30,
                width: 40,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Colors.black54,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Text(
                'Profile details',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Container(height: 40, width: 54)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    'images/profile.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
        ),
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)])),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'About yourself',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Phone number',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Align(
                          child: Text(
                            'Save',
                            style: TextStyle(color: Constants.textColor, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
  }

