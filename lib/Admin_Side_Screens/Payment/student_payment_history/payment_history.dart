import 'package:deckademics/Admin_Side_Screens/Payment/student_payment_history/custom_row_payment_history.dart';
import 'package:flutter/material.dart';



class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          backgroundColor: const Color(0xff212529),
          appBar: AppBar(
            elevation: 0,
            backgroundColor:const Color(0xff212529),
            leading: IconButton(
              color: const Color(0xffFFFFFF),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            CustomRowPaymentHistory(statusTextH: 'Upcoming', requiresContainerColorH: Color(0xff19A6E2),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Late', requiresContainerColorH: Color(0xffFF4136),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
            Divider(thickness: 2,height: 2,color: Color(0xff3A3A3A),),
            CustomRowPaymentHistory(statusTextH: 'Paid', requiresContainerColorH: Color(0xff2ECC40),),
          ],
        ),
      ),
    ));
  }
}
