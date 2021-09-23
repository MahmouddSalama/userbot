import 'package:flutter/material.dart';
import 'package:userbot/consts/const_colors.dart';
import 'package:userbot/screens/chats_screen.dart';
import 'package:userbot/widgets/header_logo.dart';
import 'package:userbot/widgets/my_button.dart';
import 'package:userbot/widgets/my_textformfilde.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool delay =false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KmainColor,
      body: ModalProgressHUD(
        inAsyncCall: delay,
        child: Stack(
          children: [
            HeaderLogo(),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * .6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      Text(
                        'Welcome in userbot!',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: size.height * .05),
                      MyTextFormField(
                        icon: Icons.mail_outline,
                        hint: 'Insert your email',
                      ),
                      MyTextFormField(
                        icon: Icons.lock_open,
                        hint: 'Insert your password',
                      ),
                      Text(
                        'I don`t remember my password',
                        style: buildTextStyle(KmainColor),
                      ),
                      SizedBox(height: size.height * .01),
                      MyButton(
                        color: KaccediColor,
                         text: 'Accedi',
                         hight: 65,
                         function: ()async{
                          setState(() {
                            delay=true;
                          });
                          try{
                           final de= await Future.delayed(Duration(seconds: 2));
                          setState(() {
                            delay=false;
                          });
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsScreen()));
                          }catch(e){}
                         }
                      ),
                      SizedBox(height: size.height * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don`t have account? ', style: buildTextStyle(Colors.black)),
                          GestureDetector(
                            onTap: () {},
                            child: Text('Register', style: buildTextStyle(KmainColor),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle buildTextStyle(Color color) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: color,
      fontSize: 18,
    );
  }
}
