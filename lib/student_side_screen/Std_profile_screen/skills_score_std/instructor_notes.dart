import 'package:flutter/material.dart';

import '../../../Instructor_Side_Screens/login_screen/reusable_text.dart';
import 'list_view_notes_std.dart';

class InstructorNotes extends StatefulWidget {
  const InstructorNotes({Key? key}) : super(key: key);

  @override
  State<InstructorNotes> createState() => _InstructorNotesState();
}

class _InstructorNotesState extends State<InstructorNotes> {
  @override
  Widget build(BuildContext context) {
    return      const Padding(
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(
              height: 15,
            ),
           ReusableText(
              title: '2022',
              color: Colors.white,
              size: 14,
            ),
          ListViewStudentNotesStd(),
          ],
        ),
      ),
    );
  }
}
