import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
import 'package:userbot/models/users.dart';
import 'package:userbot/widgets/active_archived.dart';
import 'package:userbot/widgets/state_bar.dart';
import 'package:userbot/widgets/user_card.dart';

class ConversationScreen extends StatefulWidget {
  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KchatsBackColor,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Conversations',
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: size.height * .03),
            StateBar(),
            Expanded(
             child: ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context,index){
                return UserCard(user: usersList[index],);
              },
             ),
           ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_ic_call_outlined),
        backgroundColor: KmainColor,
      ),
    );
  }

}
