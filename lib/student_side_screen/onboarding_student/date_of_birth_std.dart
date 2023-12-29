

import 'package:deckademics/Instructor_Side_Screens/obBoarding_screens/pronouns.dart';
import 'package:deckademics/student_side_screen/onboarding_student/pronouns_std.dart';
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/circle_button.dart';
import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';



class DateOfBirthStd extends StatefulWidget {
  const DateOfBirthStd({Key? key}) : super(key: key);

  @override
  State<DateOfBirthStd> createState() => _DateOfBirthStdState();
}

class _DateOfBirthStdState extends State<DateOfBirthStd> {
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
                  title: 'What is your date of birth?',
                  size: 22,
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
                  child: const TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15),
                        prefixIcon: Icon(Icons.date_range),
                        border: InputBorder.none,
                        hintText: 'DD/MM/YYYY'),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PronounsStd()));
                  },
                  child: const CircleButton()),
            ),
          ],
        ),
      ),
    );
  }
}
