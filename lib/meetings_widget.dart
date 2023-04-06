import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_management_ui/custom_alert_box.dart';
import 'package:time_management_ui/size_config.dart';
import 'package:time_management_ui/styles.dart';

class MeetingsWidget extends StatelessWidget {
  const MeetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 30),
      child: Column(
        children: [_title(context), _Meeting()],
      ),
    );
  }
}

Widget _title(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Thursday,April 6",
          style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                  color: Styles.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20, left: 10),
          child: InkWell(
            child: Ink(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffe2e1e7)),
                child: const Icon(
                  Icons.calendar_today_outlined,
                  size: 24,
                  color: Styles.textColor,
                )),
            onTap: () => showDialog(context: context, builder: (context) => const CustomAlertDialog()),
          ),
        ),
      ],
    );

class _Meeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) => DefaultTextStyle(
            style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                    color: Styles.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child:  Text(index.isEven ?  "10:00 AM" : "11:00 AM")),
                Container(
                  height: SizeConfig.height! * .15,
                  width: SizeConfig.width! * .7,
                  margin: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: Card(
                    color: index.isEven
                        ? Styles.meetingCardOneColor
                        : Styles.meetingCardTwoColor,
                    child: DefaultTextStyle(
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              color: Styles.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              index.isEven
                                  ? "Meeting with front end developers"
                                  : "Internal marketing session",
                              style: TextStyle(
                                  color: index.isEven
                                      ? const Color(0xff894754)
                                      : const Color(0xff524c6f)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              index.isEven
                                  ? "Flose real estate project"
                                  : "Marketing department",
                              style: TextStyle(
                                  color: index.isEven
                                      ? const Color(0xff894754)
                                      : const Color(0xff524c6f),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Styles.bgColor,
                                      backgroundImage:
                                          AssetImage("assets/images/f1.png"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 22),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Styles.cardOneColor,
                                        backgroundImage:
                                            AssetImage("assets/images/f1.png"),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 44),
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Styles.cardTwoColor,
                                        backgroundImage:
                                            AssetImage("assets/images/f3.png"),
                                      ),
                                    ),
                                    index.isEven
                                        ? Container()
                                        : Padding(
                                            padding:
                                                const EdgeInsets.only(left: 80),
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  const Color(0xffc5c2d6),
                                              child: Text(
                                                "+6",
                                                style: GoogleFonts.rubik(
                                                    textStyle: const TextStyle(
                                                        color: Styles.textColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    index.isOdd
                                        ? "11:00 AM - 12:00 PM"
                                        : "9:50 AM - 10:50 AM",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: index.isEven
                                            ? const Color(0xff894754)
                                            : const Color(0xff524c6f),
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
      itemCount: 10,
    );
  }
}
