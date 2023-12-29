
import 'package:flutter/material.dart';


import '../../Instructor_Side_constants/discard_dialog.dart';
import '../login_screen/reusable_text.dart';
import 'add_notes_popoff.dart';


class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212529),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff212529),
        leading: IconButton(
          color: const Color(0xffFFFFFF),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DiscardDialog();
              },
            );
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddNotesPopOff()));
            },
            icon: const Icon(Icons.check),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: const [
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
