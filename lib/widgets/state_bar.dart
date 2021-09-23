import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';

import 'active_archived.dart';
class StateBar extends StatefulWidget {
  @override
  _StateBarState createState() => _StateBarState();
}

class _StateBarState extends State<StateBar> {
  bool isactive = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          width: 50,
          height: 50,
          child: Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: size.width - 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: ActiveArchiveWidget(
                  title: 'Active',
                  color1: isactive ? KmainColor : Kwhite,
                  color2: isactive ? Kwhite : Kblack,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: ActiveArchiveWidget(
                  title: 'Archived',
                  color1: !isactive ? KmainColor : Kwhite,
                  color2: !isactive ? Kwhite : Kblack,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
