import 'package:flutter/material.dart';

import 'Custom_row_for_payment.dart';


class LatePaymentDetail extends StatefulWidget {
  const LatePaymentDetail({Key? key}) : super(key: key);

  @override
  State<LatePaymentDetail> createState() => _LatePaymentDetailState();
}

class _LatePaymentDetailState extends State<LatePaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRow(requiresText: 'Franklin Grady', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l1.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Sophie Bartoletti', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l2.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Ricky Simonis', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l3.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Kerry Bogisich', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l4.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'Lynda Beahan', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l5.png' ,requiresContainerColor: Color(0xffFF4136)),
        CustomRow(requiresText: 'James Heaney', statusText: 'Late', imagePath: 'Assets/Admin_Side/image/student_status/l6.png' ,requiresContainerColor: Color(0xffFF4136)),

      ],
    );
  }
}
