import 'package:flutter/material.dart';

import '../../../Instructor_Side_constants/add_dialog.dart';
import '../percent_screen.dart';

class ScrollingContainer extends StatelessWidget {
  final String percentageTitle;
  final Color containerColor;
  final String percentageSubtitle;
  const ScrollingContainer(
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
                      builder: (context) => const PercentageScreen(
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
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const ChatDialog();
              },
            );
          },
          child: const CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff353B41),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
