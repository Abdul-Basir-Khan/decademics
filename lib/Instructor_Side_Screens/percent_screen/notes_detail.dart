
import 'package:flutter/material.dart';

import '../login_screen/reusable_text.dart';

class NotesDetail extends StatefulWidget {
  const NotesDetail({Key? key}) : super(key: key);

  @override
  State<NotesDetail> createState() => _NotesDetailState();
}

class _NotesDetailState extends State<NotesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReusableText(
                title: 'Baby Scratch',
                color: Colors.white,
                size: 24,
              ),
              SizedBox(
                height: 15,
              ),
              ReusableText(
                title: 'November 15',
                color: Color(0xffF5F5F7),
                size: 12,
              ),
              SizedBox(
                height: 25,
              ),
              ReusableText(
                title:
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Et tempor nec a, eget\nimperdiet vel pellentesque. Tincidunt duis\ntellus rutrum id vitae sed sed. Metus, tellus\nsemper nam pretium in. Gravida risus gravida\nauctor eget eget. Aliquam quisque curabitur\nat enim sed lacus tellus. Odio adipiscing\naliquam convallis at tortor adipiscing sit\nadipiscing semper. Eget morbi velit integer\ncursus tellus ipsum faucibus diam tristique.\nEuismod nunc nibh lectus platea quam diam\nnon quisque sed. Nisl ante at dolor\ncondimentum nisl facilisis non.',
                color: Colors.white,
                size: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
