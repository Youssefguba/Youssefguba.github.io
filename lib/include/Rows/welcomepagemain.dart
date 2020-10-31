import 'package:GubaPortfolio/configure/colors.dart';
import 'package:GubaPortfolio/configure/constants.dart';
import 'package:GubaPortfolio/configure/navigation_service.dart';
import 'package:GubaPortfolio/configure/routing.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${AppTexts.helloWorld} ${AppTexts.myName}",
            style: TextStyle(
                fontFamily: 'Trispace',
                fontWeight: FontWeight.w800,
                height: 1.3,
                fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppTexts.slogan,
            style: TextStyle(
              fontFamily: 'Trispace',
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),

          //Social Media Links
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Expanded(
          //       child: Container(
          //           width: 60,
          //           height: 60,
          //           child: IconButton(
          //             icon: Icon(
          //               FontAwesomeIcons.facebookF,
          //               color: Colors.blue,
          //               size: 40,
          //             ),
          //             onPressed: () {
          //               js.context.callMethod(
          //                   "open", [AppTexts.facebookLink]);
          //             },
          //           )),
          //     ),
          //     Expanded(
          //       child: Container(
          //         width: 60,
          //         height: 60,
          //         child: GestureDetector(
          //           child: Icon(
          //             FontAwesomeIcons.twitter,
          //             color: Colors.lightBlue,
          //             size: 40,
          //           ),
          //           onTap: () {
          //             js.context.callMethod(
          //                 "open", [AppTexts.twitterLink]);
          //           },
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //           width: 60,
          //           height: 60,
          //           child: IconButton(
          //             icon: Icon(
          //               FontAwesomeIcons.linkedinIn,
          //               color: Color.fromRGBO(40, 103, 178, 1),
          //               size: 40,
          //             ),
          //             onPressed: () {
          //               js.context.callMethod("open",
          //                   [AppTexts.linkedInLink]);
          //             },
          //           )),
          //     ),
          //     Expanded(
          //       child: Container(
          //           width: 60,
          //           height: 60,
          //           child: IconButton(
          //             icon: Icon(
          //               FontAwesomeIcons.github,
          //               size: 40,
          //             ),
          //             onPressed: () {
          //               js.context.callMethod(
          //                   "open", [AppTexts.githubLink]);
          //             },
          //           )),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontFamily: 'Trispace',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColorDark),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [AppTexts.myCv]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontFamily: 'Trispace',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColorDark),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    AppTexts.helloWorld,
                    style: TextStyle(
                        fontFamily: 'Trispace',
                        fontWeight: FontWeight.w800,
                        height: 1.3,
                        fontSize: 50),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    AppTexts.myName,
                    style: TextStyle(
                        fontFamily: 'Trispace',
                        fontWeight: FontWeight.w800,
                        height: 1.3,
                        fontSize: 50),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                AppTexts.slogan,
                style: TextStyle(
                  fontFamily: 'Trispace',
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Social Media Links
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Expanded(
            //       child: Container(
            //           width: 60,
            //           height: 60,
            //           child: IconButton(
            //             icon: Icon(
            //               FontAwesomeIcons.facebookF,
            //               color: Colors.blue,
            //               size: 40,
            //             ),
            //             onPressed: () {
            //               js.context.callMethod(
            //                   "open", [AppTexts.facebookLink]);
            //             },
            //           )),
            //     ),
            //     Expanded(
            //       child: Container(
            //           width: 60,
            //           height: 60,
            //           child: IconButton(
            //             icon: Icon(
            //               FontAwesomeIcons.twitter,
            //               color: Colors.lightBlue,
            //               size: 40,
            //             ),
            //             onPressed: () {
            //               js.context.callMethod(
            //                   "open", [AppTexts.twitterLink]);
            //             },
            //           )),
            //     ),
            //     Expanded(
            //       child: Container(
            //           width: 60,
            //           height: 60,
            //           child: IconButton(
            //             icon: Icon(
            //               FontAwesomeIcons.linkedinIn,
            //               color: Color.fromRGBO(40, 103, 178, 1),
            //               size: 40,
            //             ),
            //             onPressed: () {
            //               js.context.callMethod("open",
            //                   [AppTexts.linkedInLink]);
            //             },
            //           )),
            //     ),
            //     Expanded(
            //       child: Container(
            //           width: 60,
            //           height: 60,
            //           child: IconButton(
            //             icon: Icon(
            //               FontAwesomeIcons.github,
            //               size: 40,
            //             ),
            //             onPressed: () {
            //               js.context.callMethod(
            //                   "open", [AppTexts.githubLink]);
            //             },
            //           )),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontFamily: 'Trispace',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColorDark),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [AppTexts.myCv]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontFamily: 'Trispace',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColorDark),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    AppTexts.helloWorld,
                    style: TextStyle(
                        fontFamily: 'Trispace',
                        fontWeight: FontWeight.w800,
                        height: 1.3,
                        fontSize: 32),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    AppTexts.myName,
                    style: TextStyle(
                        fontFamily: 'Trispace',
                        fontWeight: FontWeight.w800,
                        height: 1.3,
                        fontSize: 32),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                AppTexts.slogan,
                style: TextStyle(
                  fontFamily: 'Trispace',
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Social Media Links
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //         width: 55,
            //         height: 55,
            //         child: IconButton(
            //           icon: Icon(
            //             FontAwesomeIcons.facebookF,
            //             color: Colors.blue,
            //             size: 40,
            //           ),
            //           onPressed: () {
            //             js.context.callMethod(
            //                 "open", [AppTexts.facebookLink]);
            //           },
            //         )),
            //     Container(
            //         width: 55,
            //         height: 55,
            //         child: IconButton(
            //           icon: Icon(
            //             FontAwesomeIcons.twitter,
            //             color: Colors.lightBlue,
            //             size: 40,
            //           ),
            //           onPressed: () {
            //             js.context.callMethod(
            //                 "open", [AppTexts.twitterLink]);
            //           },
            //         )),
            //     Container(
            //         width: 55,
            //         height: 55,
            //         child: IconButton(
            //           icon: Icon(
            //             FontAwesomeIcons.linkedinIn,
            //             color: Color.fromRGBO(40, 103, 178, 1),
            //             size: 40,
            //           ),
            //           onPressed: () {
            //             js.context.callMethod("open",
            //                 [AppTexts.linkedInLink]);
            //           },
            //         )),
            //     Container(
            //         width: 55,
            //         height: 55,
            //         child: IconButton(
            //           icon: Icon(
            //             FontAwesomeIcons.github,
            //             size: 40,
            //           ),
            //           onPressed: () {
            //             js.context.callMethod(
            //                 "open", [AppTexts.githubLink]);
            //           },
            //         )),
            //   ],
            // ),

            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        locator<NavigationService>().navigateTo(ContactRoute),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontFamily: 'Trispace',
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColorDark),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod("open", [AppTexts.myCv]);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'SEE MY RESUME',
                        style: TextStyle(
                          fontFamily: 'Trispace',
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColorDark),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
