import 'package:GubaPortfolio/include/Rows/experiencemain.dart';
import 'package:flutter/material.dart';

class ExpCenterDesk extends StatelessWidget {
  const ExpCenterDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: ExpYearsDesk(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpCenterMob extends StatelessWidget {
  const ExpCenterMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ExpYearsMob()],
      ),
    );
  }
}

class ExpCenterTab extends StatelessWidget {
  const ExpCenterTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpYearsTab(),
        ],
      ),
    );
  }
}
