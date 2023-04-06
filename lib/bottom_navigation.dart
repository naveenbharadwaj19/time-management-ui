import 'package:flutter/material.dart';
import 'package:time_management_ui/bottom_nav_icons.dart';
import 'package:time_management_ui/styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  final Color selectedColor = Styles.bgColor;
  final Color unselectedColor = const Color(0xff9595a4);

  void updateIdx(int idx) {
    setState(() {
      index = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        decoration: BoxDecoration(
          color: Styles.bottomNavigationBgColor,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(width: 2.0, color: Colors.transparent),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              color: index == 0 ? selectedColor : unselectedColor,
              icon: const Icon(BottomNavIcons.th_large),
              onPressed: () => updateIdx(0),
            ),
            IconButton(
              color: index == 1 ? selectedColor : unselectedColor,
              icon: const Icon(BottomNavIcons.calendar_empty),
              onPressed: () => updateIdx(1),
            ),
            IconButton(
              color: index == 2 ? selectedColor : unselectedColor,
              icon: const Icon(BottomNavIcons.calendar_plus_o),
              onPressed: () => updateIdx(2),
            ),
            IconButton(
              color: index == 3 ? selectedColor : unselectedColor,
              icon: const Icon(BottomNavIcons.chat),
              onPressed: () => updateIdx(3),
            ),
            IconButton(
                color: index == 4 ? selectedColor : unselectedColor,
                icon: const Icon(BottomNavIcons.cog),
                onPressed: () => updateIdx(4)),
          ],
        ),
      ),
    );
  }
}
