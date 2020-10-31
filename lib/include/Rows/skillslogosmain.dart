import 'package:GubaPortfolio/configure/colors.dart';
import 'package:GubaPortfolio/configure/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsLogoDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppTexts.whoAmI,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 1.0,
                fontSize: 50,
                fontFamily: 'Trispace'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppTexts.bio,
            style: TextStyle(fontSize: 22, fontFamily: 'Trispace'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 70,
                  height: 70,
                  child: Icon(
                    FontAwesomeIcons.android,
                    size: 60,
                    color: primaryColor,
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 70,
                  height: 70,
                  child: Icon(
                    FontAwesomeIcons.java,
                    size: 60,
                    color: Colors.deepOrangeAccent,
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 70,
                  height: 70,
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 60,
                    color: Colors.white,
                  )),
              Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/images/flutter.png',
                    width: 50,
                    height: 50,
                    color: Colors.blueAccent,
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/images/dart.png',
                    width: 50,
                    height: 50,
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    'assets/images/firebase.png',
                    width: 50,
                    height: 50,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppTexts.skillOne,
            style: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
          ),
          SizedBox(height: 15),
          Text(
            AppTexts.skillTwo,
            style: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
          ),
          SizedBox(height: 15),
          Text(
            AppTexts.skillThree,
            style: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
          ),
          SizedBox(height: 10),
          Text(
            AppTexts.skillFour,
            style: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
          ),
        ],
      ),
    );
  }
}

class SkillsLogoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppTexts.whoAmI,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: 50,
                  fontFamily: 'Trispace'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              AppTexts.bio,
              style: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.android,
                      size: 60,
                      color: primaryColor,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.java,
                      size: 60,
                      color: Colors.deepOrangeAccent,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.github,
                      size: 60,
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/flutter.png',
                      width: 50,
                      height: 50,
                      color: Colors.blueAccent,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/dart.png',
                      width: 50,
                      height: 50,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/firebase.png',
                      width: 50,
                      height: 50,
                    )),
              ],
            ),
            SizedBox(height: 20),
            Text(
              AppTexts.skillOne,
              style: TextStyle(fontSize: 20, fontFamily: 'Trispace'),
            ),
            SizedBox(height: 10),
            Text(
              AppTexts.skillTwo,
              style: TextStyle(fontSize: 20, fontFamily: 'Trispace'),
            ),
            SizedBox(height: 10),
            Text(
              AppTexts.skillThree,
              style: TextStyle(fontSize: 20, fontFamily: 'Trispace'),
            ),
            SizedBox(height: 10),
            Text(
              AppTexts.skillFour,
              style: TextStyle(fontSize: 20, fontFamily: 'Trispace'),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsLogoMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppTexts.whoAmI,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.0,
                  fontSize: 32,
                  fontFamily: 'Trispace'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              AppTexts.bio,
              style: TextStyle(fontSize: 16, fontFamily: 'Trispace'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.android,
                      size: 60,
                      color: primaryColor,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.java,
                      size: 60,
                      color: Colors.deepOrangeAccent,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 70,
                    height: 70,
                    child: Icon(
                      FontAwesomeIcons.github,
                      size: 60,
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/flutter.png',
                      width: 50,
                      height: 50,
                      color: Colors.blueAccent,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/dart.png',
                      width: 50,
                      height: 50,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/firebase.png',
                      width: 50,
                      height: 50,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppTexts.skillOne,
              style: TextStyle(fontSize: 16, fontFamily: 'Trispace'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppTexts.skillTwo,
              style: TextStyle(fontSize: 16, fontFamily: 'Trispace'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppTexts.skillThree,
              style: TextStyle(fontSize: 16, fontFamily: 'Trispace'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppTexts.skillFour,
              style: TextStyle(fontSize: 16, fontFamily: 'Trispace'),
            ),
          ],
        ),
      ),
    );
  }
}
