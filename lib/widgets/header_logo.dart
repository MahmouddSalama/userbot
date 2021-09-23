import 'package:flutter/material.dart';
class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: Container(
        width: size.width,
        height: size.height * .4,
        child: Stack(
          children: [
            Align(
              child: Image.asset("assets/images/logo.png"),
            ),
            Align(
              alignment: Alignment(.9,.8),
              child: Image.asset("assets/images/right.png"),
            ),
            Align(
              alignment: Alignment(-.9,-.6),
              child: Image.asset("assets/images/left.png"),
            ),
          ],
        ),
      ),
    );
  }
}
