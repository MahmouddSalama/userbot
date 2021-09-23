import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';

class MessageCard extends StatelessWidget {
  final bool isMe;

  const MessageCard({required this.isMe});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: isMe?CrossAxisAlignment.start:CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: size.width,
            height: size.height * .15,
            decoration: BoxDecoration(
              color:isMe?KmyMessageColor: KhisMessageColor,
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(30),
                      //topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )
                  : BorderRadius.only(
                      //topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
            ),
            child: Text(
              'Text messaging, or texting, is the act of composing and sending electronic messages, typically consisting of alphabetic and numeric characters, ',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w500, color: Kblack),
            ),
          ),
          SizedBox(height: 5,),
          Text("20:04"),
        ],
      ),
    );
  }
}
