
import 'package:deckademics/Admin_Side_Screens/Students_Status/custom_row_for_student.dart';
import 'package:flutter/material.dart';

class ActiveStudents extends StatefulWidget {
  const ActiveStudents({Key? key}) : super(key: key);

  @override
  State<ActiveStudents> createState() => _ActiveStudentsState();
}

class _ActiveStudentsState extends State<ActiveStudents> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRowForStudent(requiresText: 'Lindsey Mango', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 11.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Lance Leuschke', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 41.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Nicole Osinski III', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5.1.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Carroll Fay', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 6.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Sonya Lind', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Steven Mueller', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9.1.png' ,requiresContainerColor: Color(0xff40A647)),

      ],
    );
  }
}
