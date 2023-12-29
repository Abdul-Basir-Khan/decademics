import 'package:flutter/material.dart';

import '../../login_screen/reusable_text.dart';


class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            padding: const EdgeInsets.only(top: 90, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff353B41)),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ReusableText(
                  title: 'Lindsey Mango',
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ReusableText(
                      title: 'AMATEUR',
                      color: Colors.white,
                      size: 24,
                      weight: FontWeight.w100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 50),
                      child: Container(
                          height: 80, width: 1, color: const Color(0xff212529)),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: '4 / 12',
                          color: Colors.white,
                          size: 24,
                          weight: FontWeight.w100,
                        ),
                        ReusableText(
                          title: 'Week',
                          color: Colors.white,
                          size: 14,
                          weight: FontWeight.w100,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 150,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: const Image(
              image: AssetImage('Assets/images/skill_score/Ellipse3.png'),
            ),
          ),
        ),
      ],
    );
  }
}
