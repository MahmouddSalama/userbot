import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
class DotButton extends StatelessWidget {
  final String text;
  final Function function;

  const DotButton({required this.text,
  required this.function
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      color: Colors.black,
      strokeWidth: 1,
      child: GestureDetector(
        onTap: (){

        },
        child: Container(
          alignment: Alignment.center,
          width: size.width*.4,
          height: 50,
          child: Text(text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]
            ),),
        ),
      ),
    );
  }
}
