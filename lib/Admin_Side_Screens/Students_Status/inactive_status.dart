
import 'package:deckademics/Admin_Side_Screens/Students_Status/custom_row_for_student.dart';
import 'package:flutter/material.dart';

class InActiveStudents extends StatefulWidget {
  const InActiveStudents({Key? key}) : super(key: key);

  @override
  State<InActiveStudents> createState() => _InActiveStudentsState();
}

class _InActiveStudentsState extends State<InActiveStudents> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRowForStudent(requiresText: 'Terrell Schumm', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 3.png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Tracy O\'Hara', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 4 (1.2).png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Ernest Smith', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5 (1).png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Carroll McClure ', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 6 (1).png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Jan Gutkowski', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.1.png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Genevieve Mayert', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9 (1).png' ,requiresContainerColor: Color(0xff353B41)),

      ],
    );
  }
}
