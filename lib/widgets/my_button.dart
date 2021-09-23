import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';

class MyButton extends StatelessWidget {
  final Function function;
  final String text;
  final int hight;
  final Color color;

  const MyButton({
    required this.function,
   required this.text,
   required this.hight,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Container(
        width: size.width*.6,
        height: hight.toDouble(),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: FlatButton(
          onPressed: () => function(),
          child: Text(
           text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
