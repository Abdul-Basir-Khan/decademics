import 'package:flutter/material.dart';

import 'Custom_row_for_payment.dart';


class AllPaymentDetail extends StatefulWidget {
  const AllPaymentDetail({Key? key}) : super(key: key);

  @override
  State<AllPaymentDetail> createState() => _AllPaymentDetailState();
}

class _AllPaymentDetailState extends State<AllPaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRow(requiresText: 'Lindsey Mango', statusText: 'Upcoming', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 11.png' ,requiresContainerColor: Color(0xff19A6E2)),
        CustomRow(requiresText: 'Julia Baumbach', statusText: 'Paid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 4.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRow(requiresText: 'Emanuel Abbott', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Kristen Howell', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 6 (2).png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Kristi Koepp', statusText: 'Paid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRow(requiresText: 'Carmen Bayer', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9.png' ,requiresContainerColor: Color(0xffFF4136)),

      ],
    );
  }
}
