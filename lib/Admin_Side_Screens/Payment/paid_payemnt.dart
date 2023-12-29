import 'package:flutter/material.dart';

import 'Custom_row_for_payment.dart';


class PaidPaymentDetail extends StatefulWidget {
  const PaidPaymentDetail({Key? key}) : super(key: key);

  @override
  State<PaidPaymentDetail> createState() => _PaidPaymentDetailState();
}

class _PaidPaymentDetailState extends State<PaidPaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRow(requiresText: 'Lindsey Mango', statusText: 'PAid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 11.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRow(requiresText: 'Lance Leuschke', statusText: 'Partial', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 41.png' ,requiresContainerColor: Color(0xffF8D600)),
        CustomRow(requiresText: 'Nicole Osinski III', statusText: 'Paid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 5.1.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRow(requiresText: 'Carroll Fay', statusText: 'Partial', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 6.png' ,requiresContainerColor: Color(0xffF8D600)),
        CustomRow(requiresText: 'Sonya Lind', statusText: 'PAid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 7.png' ,requiresContainerColor: Color(0xff40A647)),
        CustomRow(requiresText: 'Steven Mueller', statusText: 'Paid', imagePath: 'Assets/Admin_Side/image/student_status/Ellipse 9.1.png' ,requiresContainerColor: Color(0xff40A647)),

      ],
    );
  }
}
