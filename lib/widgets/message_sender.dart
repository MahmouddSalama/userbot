import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
class MessageSender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20
      ),
      child: Container(
        width: size.width,
        height: 50,
        child: Card(
          elevation: 0,
          color: KhisMessageColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Write your message here...',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              suffixIcon: FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.arrow_forward_rounded),
                elevation: 0,
                mini: true,
                backgroundColor: KmainColor,
              ),
              border:InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
