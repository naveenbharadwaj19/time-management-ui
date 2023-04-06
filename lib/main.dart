import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time_management_ui/bottom_navigation.dart';
import 'package:time_management_ui/meetings_widget.dart';
import 'package:time_management_ui/size_config.dart';
import 'package:time_management_ui/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Time Management',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title(),
              _Progress(),
              const MeetingsWidget(),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

Widget _title() => Container(
      margin: const EdgeInsets.only(top: 30, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Hello, Villie!",
            style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                    fontSize: 35,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w500)),
          ),
          const CircleAvatar(
            backgroundColor: Color(0xff9595a4),
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Styles.bgColor,
              radius: 30,
              backgroundImage: AssetImage('assets/images/f1.png'),
            ),
          )
        ],
      ),
    );

class _Progress extends StatelessWidget {
  Widget card({
    required Color cardColor,
    required String percentText,
    required String bodyText,
    required String hintText,
    required Color color,
    required double percentage,
  }) =>
      SizedBox(
        width: SizeConfig.width! * .4,
        child: Card(
          color: cardColor,
        elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 5, left: 10),
                  child: CircularPercentIndicator(
                    radius: 30,
                    lineWidth: 3.5,
                    percent: percentage,
                    center: Text(
                      percentText,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(fontSize: 16, color: color)),
                    ),
                    progressColor: color,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    bodyText,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 16,
                            color: color,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    hintText,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: color.withOpacity(.7),
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 40),
          child: Text(
            "Your Progess",
            style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                    fontSize: 18,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w500)),
          ),
        ),
        Container(
          height: SizeConfig.height! * .27,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              card(
                  cardColor: Styles.cardOneColor,
                  percentage: .3,
                  percentText: "19/40",
                  bodyText: "Working \nHours",
                  hintText: "Working hours exceed by 3 hours",
                  color: Styles.bgColor),
              card(
                  cardColor: Styles.cardTwoColor,
                  percentage: .82,
                  percentText: "82%",
                  bodyText: "Your \nEfficency",
                  hintText: "Execellent Results",
                  color: const Color(0xffa77f24)),
              card(
                  cardColor: Styles.cardOneColor,
                  percentage: .3,
                  percentText: "19/40",
                  bodyText: "Working \nHours",
                  hintText: "Working hours exceed by 3 hours",
                  color: Styles.bgColor),
              card(
                  cardColor: Styles.cardTwoColor,
                  percentage: .82,
                  percentText: "82%",
                  bodyText: "Your \nEfficency",
                  hintText: "Execellent Results",
                  color: const Color(0xffa77f24)),
            ],
          ),
        ),
      ],
    );
  }
}
