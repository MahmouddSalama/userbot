import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
import 'package:userbot/models/users.dart';
import 'package:userbot/widgets/dot_button.dart';
import 'package:userbot/widgets/message_card.dart';
import 'package:userbot/widgets/message_sender.dart';
import 'package:userbot/widgets/my_button.dart';
class MessageScreen extends StatelessWidget {
  final Users user;
  const MessageScreen({required this.user}) ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KchatsBackColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .25,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                      Text(
                        "Convertsations with Matilda-27020",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(user.imagUrl),
                      ),
                      MyButton(
                        function: (){},
                        text: 'User deltail',
                        hight: 40,
                        color: KmainColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height * .75,
              decoration: BoxDecoration(
                color: Kwhite,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(35),
                  left: Radius.circular(35),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "April 04,202",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    MessageCard(
                      isMe: false,
                    ),
                    MessageCard(
                      isMe: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DotButton(text: "Close account",
                        function: (){},
                        ),
                        DotButton(text: 'Leave a Feedback',
                        function:(){},
                        ),
                      ],
                    ),
                    Expanded(child: Text('')),
                    MessageSender()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
