import 'package:GubaPortfolio/configure/colors.dart';
import 'package:GubaPortfolio/include/CenteringOfPages/experience_center.dart';
import 'package:GubaPortfolio/include/CenteringOfPages/contact_center.dart';
import 'package:GubaPortfolio/include/CenteringOfPages/skills_desk.dart';
import 'package:GubaPortfolio/include/imagesmain/images.dart';
import 'package:GubaPortfolio/include/Rows/progressbarmain.dart';
import 'package:GubaPortfolio/include/Rows/skillslogosmain.dart';
import 'package:GubaPortfolio/include/Rows/welcomepagemain.dart';
import 'package:GubaPortfolio/pages/footer.dart';
import 'package:GubaPortfolio/pages/progresspage.dart';
import 'package:GubaPortfolio/pages/welcome.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  _HomeDesktopState createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  var _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        controller: _controller,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(child: WelcomePage()),
                        Expanded(child: OneDesk()),
                      ],
                    ),
                    SectionLine(),
                    SizedBox(height: 75),

                    Row(
                      children: [
                        Expanded(child: ExpCenterDesk()),
                      ],
                    ),
                    SizedBox(height: 75),

                    Row(
                      children: <Widget>[
                        Expanded(child: TwoDesk()),
                        Expanded(child: SkillsLogoDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    SectionLine(),

                    Row(
                      children: <Widget>[
                        Expanded(child: SkillBarDesk()),
                        Expanded(child: ThreeDesk()),
                      ],
                    ),
                    SizedBox(
                      height: 75,
                    ),

                    // Row(
                    //   children: [
                    //     Expanded(child: EducationDesk()),
                    //   ],
                    // ),
                    // Row(
                    //   children: [
                    //     Expanded(child: AchievementDesk()),
                    //   ],
                    // ),
                    SizedBox(
                      height: 75,
                    ),

                    Row(
                      children: [
                        Expanded(child: ContactCenterDesk()),
                        Expanded(
                          child: FourDesk(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),

                    Row(
                      children: [
                        Expanded(child: FooterPage()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageMob(),
                OneMob(),
                ExpCenterMob(),
                SkillsMob(),
                ProgressPage(),
                // EducationMob(),
                // AchievementMob(),
                ContactCenterMob(),
                SizedBox(
                  height: 50,
                ),
                FooterPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                WelcomePageTab(),
                OneTab(),
                ExpCenterTab(),
                SkillsTab(),
                ProgressPage(),
                // EducationTab(),
                // AchievementTab(),
                ContactCenterTab(),
                SizedBox(
                  height: 50,
                ),
                FooterMob(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 1,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          gradient: sectionLineGradientColor,
        ),
      ),
    );
  }
}
