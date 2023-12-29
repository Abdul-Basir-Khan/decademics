import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/percentage_screen_std.dart';
import 'package:flutter/material.dart';



class ScrollingContainerStd extends StatelessWidget {
  final String percentageTitle;
  final Color containerColor;
  final String percentageSubtitle;
  const ScrollingContainerStd(
      {Key? key,
        required this.percentageTitle,
        required this.containerColor,
        required this.percentageSubtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PercentageScreenStd(
                          perc: 0.9,
                          percentage: '90',
                          percentageColor: Color(0xff00ff94))));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColor,
              ),
              height: 250,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        percentageTitle,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Text(
                    percentageSubtitle,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
