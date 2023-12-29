import 'package:deckademics/student_side_screen/log_in_std/log_in_screen_std.dart';
import 'package:flutter/material.dart';
import '../../Instructor_Side_constants/circle_button.dart';
import '../../Instructor_Side_constants/colors.dart';
import '../../Instructor_Side_constants/reusable_text.dart';

class LearnStd extends StatefulWidget {
  const LearnStd({Key? key}) : super(key: key);
  @override
  State<LearnStd> createState() => _LearnStdState();
}

class _LearnStdState extends State<LearnStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        actions: [
          Center(
              child: InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context){
                    return const LoginScreenStd();
                  }));}, child: const ReusableTextByH(title: 'Skip'))),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const ReusableTextByH(
                  title: 'What made you want to learn how to DJ?',
                  size: 24,
                  weight: FontWeight.w300,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      maxLines: 15,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
             Align(
              alignment: Alignment.bottomRight,
              child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context){
                return const LoginScreenStd();
              }));},child: const CircleButton()),
            ),
          ],
        ),
      ),
    );
  }
}
