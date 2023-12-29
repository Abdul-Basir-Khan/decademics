import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/list_view_your_notes.dart';
import 'package:deckademics/student_side_screen/Std_profile_screen/skills_score_std/student_notes_empty_std.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';



class YourNotes extends StatefulWidget {
  const YourNotes({Key? key}) : super(key: key);

  @override
  State<YourNotes> createState() => _YourNotesState();
}

class _YourNotesState extends State<YourNotes> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(
              height: 15,
            ),
            const ReusableText(
              title: '2022',
              color: Colors.white,
              size: 14,
            ),
            const ListViewYourNotes(),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentNotesEmptyStateStd()));
                    });
                  },
                  child:  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff353B41),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
