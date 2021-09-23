import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';

class ActiveArchiveWidget extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String title;
  const ActiveArchiveWidget({
    Key? key,
   required this.color1,
   required this.color2,
    required this.title ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: (size.width - 100) / 2,
      height: 50,
      decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: color2,
          fontSize: 20,
        ),
      ),
    );
  }
}
