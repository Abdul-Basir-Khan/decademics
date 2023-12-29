
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/circle_button.dart';
import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';
import 'email_std.dart';



class WelcomeScreenStd extends StatefulWidget {
  const WelcomeScreenStd({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenStd> createState() => _WelcomeScreenStdState();
}

class _WelcomeScreenStdState extends State<WelcomeScreenStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
                image: AssetImage(
                    'Assets/images/signUp_assets/DeckademicsUSB-2019-logo-BlGr-transparent.png')),
            const Column(
              children: [
                ReusableTextByH(
                  title: 'Welcome',
                  size: 72,
                  weight: FontWeight.bold,
                  color: Color(0xff40A647),
                ),
                SizedBox(
                  height: 10,
                ),
                ReusableTextByH(
                  title: 'We are going to need some\ninfo from you.',
                  size: 24,
                  weight: FontWeight.w300,
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const EmailStd()));
                  },
                  child: const CircleButton()),
            )
          ],
        ),
      ),
    );
  }
}
