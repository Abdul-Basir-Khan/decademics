
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';

class Browse {
  String title;
  String subtitle;
  Color containerColor;

  Browse(
      {required this.title,
      required this.subtitle,
      required this.containerColor});
}

class ListViewCurrent extends StatefulWidget {
  const ListViewCurrent({
    Key? key,
  }) : super(key: key);

  @override
  State<ListViewCurrent> createState() => _ListViewCurrentState();
}

class _ListViewCurrentState extends State<ListViewCurrent> {

  final List<Browse> lst = [
    Browse(
        title: 'Makeup Class',
        subtitle: 'You have a makeup class with Cater on Sept 13!',
        containerColor: const Color(0xff3F51B5)),
    Browse(
        title: 'Attendance',
        subtitle: 'Did Cater show up on Thurs Sept 5?',
        containerColor: const Color(0xffFFC107)),
    Browse(
        title: 'Student Notes',
        subtitle: 'Don’t forget to your class note for Cater for Aug 27.',
        containerColor: const Color(0xffFF5722)),
    Browse(
        title: 'New Session',
        subtitle: 'A new seesion starts next week.',
        containerColor: const Color(0xff009688)),
    Browse(
        title: 'New Student',
        subtitle: 'You have a new student Kaylynn Ford starting today.',
        containerColor: const Color(0xff9C27B0)),
    Browse(
        title: 'Student Passing',
        subtitle: 'Your student Lindsey Mango is moving into a new course.',
        containerColor: const Color(0xff607D8B)),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: lst[index].containerColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: lst[index].title,
                        color: Colors.white,
                        size: 14,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        title: lst[index].subtitle,
                        color: Colors.white,
                        size: 09,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
