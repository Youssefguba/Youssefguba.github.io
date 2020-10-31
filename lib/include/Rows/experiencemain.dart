import 'package:GubaPortfolio/configure/colors.dart';
import 'package:GubaPortfolio/configure/constants.dart';
import 'package:flutter/material.dart';

class ExpYearsDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.numOfYears,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 50,
                  fontFamily: 'Trispace',
                  color: primaryColor)),
          Text(AppTexts.years,
              style: TextStyle(fontSize: 50, fontFamily: 'Trispace')),
          SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 250,
              width: 1500,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),

                  // year 2020
                  YearsCardDesktop(
                    yearNum: AppTexts.fourthYearNum,
                    yearExp: AppTexts.fourthYearExp,
                    yearPosition: AppTexts.fourthYearPosition,
                  ),

                  SizedBox(
                    width: 30,
                  ),

                  // Year 2019
                  YearsCardDesktop(
                    yearNum: AppTexts.thirdYearNum,
                    yearExp: AppTexts.thirdYearExp,
                    yearPosition: AppTexts.thirdYearPosition,
                  ),

                  SizedBox(
                    width: 30,
                  ),

                  // Year 2018
                  YearsCardDesktop(
                    yearNum: AppTexts.secondYearNum,
                    yearExp: AppTexts.secondYearExp,
                    yearPosition: AppTexts.secondYearPosition,
                  ),

                  SizedBox(
                    width: 30,
                  ),

                  // Year 2017
                  YearsCardDesktop(
                    yearNum: AppTexts.firstYearNum,
                    yearExp: AppTexts.firstYearExp,
                    yearPosition: AppTexts.firstYearPosition,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class ExpYearsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppTexts.numOfYears,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 50,
                    fontFamily: 'Trispace',
                    color: primaryColor)),
            Text(AppTexts.years,
                style: TextStyle(fontSize: 50, fontFamily: 'Trispace')),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        // year 2020
                        YearsCardDesktop(
                          yearNum: AppTexts.fourthYearNum,
                          yearExp: AppTexts.fourthYearExp,
                          yearPosition: AppTexts.fourthYearPosition,
                        ),

                        SizedBox(
                          width: 30,
                        ),

                        // Year 2019
                        YearsCardDesktop(
                          yearNum: AppTexts.thirdYearNum,
                          yearExp: AppTexts.thirdYearExp,
                          yearPosition: AppTexts.thirdYearPosition,
                        ),
                      ],
                    ),

                    // Year 2018
                    Row(
                      children: [
                        YearsCardDesktop(
                          yearNum: AppTexts.secondYearNum,
                          yearExp: AppTexts.secondYearExp,
                          yearPosition: AppTexts.secondYearPosition,
                        ),

                        SizedBox(
                          width: 30,
                        ),

                        // Year 2017
                        YearsCardDesktop(
                          yearNum: AppTexts.firstYearNum,
                          yearExp: AppTexts.firstYearExp,
                          yearPosition: AppTexts.firstYearPosition,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpYearsMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Text(AppTexts.numOfYears,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    fontFamily: 'Trispace',
                    color: primaryColor)),
            Text(AppTexts.years,
                style: TextStyle(fontSize: 30, fontFamily: 'Trispace')),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                    ),

                    // year 2020
                    YearsCardDesktop(
                      yearNum: AppTexts.fourthYearNum,
                      yearExp: AppTexts.fourthYearExp,
                      yearPosition: AppTexts.fourthYearPosition,
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    // Year 2019
                    YearsCardDesktop(
                      yearNum: AppTexts.thirdYearNum,
                      yearExp: AppTexts.thirdYearExp,
                      yearPosition: AppTexts.thirdYearPosition,
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    // Year 2018
                    YearsCardDesktop(
                      yearNum: AppTexts.secondYearNum,
                      yearExp: AppTexts.secondYearExp,
                      yearPosition: AppTexts.secondYearPosition,
                    ),

                    SizedBox(
                      width: 30,
                    ),

                    // Year 2017
                    YearsCardDesktop(
                      yearNum: AppTexts.firstYearNum,
                      yearExp: AppTexts.firstYearExp,
                      yearPosition: AppTexts.firstYearPosition,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YearsCardDesktop extends StatelessWidget {
  final String yearNum;
  final String yearPosition;
  final String yearExp;

  const YearsCardDesktop(
      {Key key, this.yearNum, this.yearPosition, this.yearExp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 300.0,
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: backgroundGradientColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            yearNum,
            style: TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.w700,
                fontFamily: 'Trispace'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            yearPosition,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Trispace'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(yearExp,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade300,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Trispace')),
        ],
      ),
    );
  }
}
