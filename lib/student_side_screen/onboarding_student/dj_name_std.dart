import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/circle_button.dart';
import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';
import 'contect_number_std.dart';

class DjNameStd extends StatefulWidget {
  const DjNameStd({Key? key}) : super(key: key);

  @override
  State<DjNameStd> createState() => _DjNameStdState();
}

class _DjNameStdState extends State<DjNameStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ReusableTextByH(
                  title: 'What is your DJ name?',
                  size: 24,
                  weight: FontWeight.w300,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {},
                    child: const ReusableTextByH(title: 'I Don’t have one yet!'))
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactNumberStd()));
                  },
                  child: const CircleButton()),
            ),
          ],
        ),
      ),
    );
  }
}
