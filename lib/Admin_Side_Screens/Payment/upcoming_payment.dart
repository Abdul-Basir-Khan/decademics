import 'package:deckademics/Admin_Side_Screens/Payment/Custom_row_for_payment.dart';
import 'package:flutter/material.dart';

class UpcomingPayment extends StatefulWidget {
  const UpcomingPayment({Key? key}) : super(key: key);

  @override
  State<UpcomingPayment> createState() => _UpcomingPaymentState();
}

class _UpcomingPaymentState extends State<UpcomingPayment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRow(requiresText: 'Terrell Schumm', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 3.png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Tracy O\'Hara', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 4 (1.2).png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Ernest Smith', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5 (1).png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Carroll McClure ', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 6 (1).png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Jan Gutkowski', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.1.png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Genevieve Mayert', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9 (1).png' ,requiresContainerColor: Color(0xff19A6E2)),

      ],
    );
  }
}
