
import 'package:deckademics/Admin_Side_Screens/Students_Status/custom_row_for_student.dart';
import 'package:flutter/material.dart';

class AllStudents extends StatefulWidget {
  const AllStudents({Key? key}) : super(key: key);

  @override
  State<AllStudents> createState() => _AllStudentsState();
}

class _AllStudentsState extends State<AllStudents> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRowForStudent(requiresText: 'Lindsey Mango', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 11.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Julia Baumbach', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 4.png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Emanuel Abbott', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Tracy White', statusText: 'Inactive', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 4 (1).png' ,requiresContainerColor: Color(0xff353B41)),
        CustomRowForStudent(requiresText: 'Kristi Koepp', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRowForStudent(requiresText: 'Carmen Bayer', statusText: 'Active', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9.png' ,requiresContainerColor: Color(0xff40A647)),

      ],
    );
  }
}
