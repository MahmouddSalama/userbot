import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
import 'package:userbot/models/users.dart';
import 'package:userbot/screens/message_screen.dart';

class UserCard extends StatelessWidget {
  final Users user;

  const UserCard({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessageScreen(
              user: user,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          padding: EdgeInsets.all(10),
          width: size.width,
          height: size.height * .18,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 0)),
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(user.imagUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        user.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${user.time} Hour",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: KmainColor),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.check_circle,
                    color: KchicColor,
                    size: 30,
                  )
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 65,
                    decoration: BoxDecoration(
                      color: KnewmessageColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xffD55233),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: size.width * .6,
                    child: Text(
                      user.msg,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
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
