import 'package:GubaPortfolio/configure/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FooterDesk(),
      tablet: FooterTab(),
      mobile: FooterMob(),
    );
  }
}

class FooterDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTexts.madeWithLove,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500),
            ),
            Image.network(
              AppTexts.signatureLink,
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}

class FooterTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTexts.madeWithLove,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500),
            ),
            Image.network(
              AppTexts.signatureLink,
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}

class FooterMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTexts.madeWithLove,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500),
            ),
            Image.network(
              AppTexts.signatureLink,
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
