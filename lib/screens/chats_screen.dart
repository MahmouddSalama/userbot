import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
import 'package:userbot/modules/Notification_screen.dart';
import 'package:userbot/modules/conversation_screen.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _currentIndex = 0;
  final List<Widget>bodys =[
    ConversationScreen(),
    NotificationScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },

          selectedItemColor: KmainColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mark_chat_read_sharp,
                size: 30,
              ),
              label: 'Conversations',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.doorbell_sharp,
                size: 30,
              ),
              label: 'Notifications',
            ),
          ],
        ),
      ),
      body: bodys[_currentIndex],
    );
  }
}
