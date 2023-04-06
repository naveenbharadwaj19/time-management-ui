import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_management_ui/size_config.dart';
import 'package:time_management_ui/styles.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Center(
      child: Container(
        height: SizeConfig.height! * .7,
        width: SizeConfig.width! * .85,
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Card(
          color: Styles.bgColor,
          shape: RoundedRectangleBorder(
              borderRadius:  BorderRadius.circular(20)),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  child: InkWell(
                    child: Ink(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xffe2e1e7)),
                        child: const Icon(
                          Icons.close_rounded,
                          size: 24,
                          color: Styles.textColor,
                        )),
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Image.asset(
                    "assets/images/snacks.png",
                    height: 220,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    "Oh, You need \nsome rest!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 24,
                            color: Styles.textColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(
                    """Coffee machine can make\na coppuccino speci for you in \n5 minutes. Do you want some coffee?""",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            color: Styles.textColor,
                            fontWeight: FontWeight.w300)),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin:
                          const EdgeInsets.only(top: 5, left: 10, bottom: 20),
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Styles.textColor, width: 2.5)),
                          ),
                          child: Text(
                            "No, Later",
                            style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Styles.textColor,
                                    fontWeight: FontWeight.w500)),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      margin:
                          const EdgeInsets.only(top: 5, left: 20, bottom: 20),
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Styles.buttonColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                          ),
                          child: Text(
                            "Yes, Thanks!",
                            style: GoogleFonts.rubik(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff724701),
                                    fontWeight: FontWeight.w500)),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
