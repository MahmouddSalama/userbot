import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const MyTextFormField({
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: size.width,
        height: 75,
        child: Card(
          elevation: 0,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                size: 28,
                color: KaccediColor,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(.3), width: 1.5)),
              labelText: hint,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.grey
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
