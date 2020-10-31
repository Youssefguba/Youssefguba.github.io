import 'package:GubaPortfolio/configure/colors.dart';
import 'package:GubaPortfolio/configure/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class SkillBarDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppTexts.proficiency,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
                fontFamily: 'Trispace'),
          ),
          SizedBox(
            height: 30,
          ),
          FAProgressBar(
            borderRadius: 20,
            maxValue: 100,
            animatedDuration: Duration(milliseconds: 3000),
            displayText: AppTexts.firstProficiency,
            displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
            backgroundColor: Colors.white,
            progressColor: primaryColorDark,
            currentValue: AppTexts.firstProPercent,
          ),
          SizedBox(
            height: 30,
          ),
          FAProgressBar(
            borderRadius: 20,
            maxValue: 100,
            animatedDuration: Duration(milliseconds: 3000),
            displayText: AppTexts.secondProficiency,
            displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
            backgroundColor: Colors.white,
            progressColor: primaryColorDark,
            currentValue: AppTexts.secondProPercent,
          ),
          SizedBox(
            height: 30,
          ),
          FAProgressBar(
            borderRadius: 20,
            maxValue: 100,
            animatedDuration: Duration(milliseconds: 3000),
            displayText: AppTexts.thirdProficiency,
            displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
            backgroundColor: Colors.white,
            progressColor: primaryColorDark,
            currentValue: AppTexts.thirdProPercent,
          ),
          SizedBox(
            height: 30,
          ),
          FAProgressBar(
            borderRadius: 20,
            maxValue: 100,
            animatedDuration: Duration(milliseconds: 3000),
            displayText: AppTexts.fourthProficiency,
            displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
            backgroundColor: Colors.white,
            progressColor: primaryColorDark,
            currentValue: AppTexts.fourthProPercent,
          ),
        ],
      ),
    );
  }
}

class SkillBarTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppTexts.proficiency,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                  fontFamily: 'Trispace'),
            ),
            SizedBox(
              height: 30,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.firstProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.firstProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.secondProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.secondProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.thirdProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.thirdProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.fourthProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.fourthProPercent,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillBarMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppTexts.proficiency,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  fontFamily: 'Trispace'),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.firstProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.firstProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.secondProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.secondProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.thirdProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.thirdProPercent,
            ),
            SizedBox(
              height: 20,
            ),
            FAProgressBar(
              borderRadius: 20,
              maxValue: 100,
              animatedDuration: Duration(milliseconds: 3000),
              displayText: AppTexts.fourthProficiency,
              displayTextStyle: TextStyle(fontSize: 18, fontFamily: 'Trispace'),
              backgroundColor: Colors.white,
              progressColor: primaryColorDark,
              currentValue: AppTexts.fourthProPercent,
            ),
          ],
        ),
      ),
    );
  }
}
