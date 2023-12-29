import 'package:deckademics/Admin_Side_Screens/Payment/all_payments_details.dart';
import 'package:deckademics/Admin_Side_Screens/Payment/late_payment.dart';
import 'package:deckademics/Admin_Side_Screens/Payment/paid_payemnt.dart';
import 'package:deckademics/Admin_Side_Screens/Payment/upcoming_payment.dart';
import 'package:flutter/material.dart';

import '../../Instructor_Side_constants/reusable_text.dart';

class PaymentStatus extends StatefulWidget {
  const PaymentStatus({Key? key}) : super(key: key);

  @override
  State<PaymentStatus> createState() => _PaymentStatusState();
}

class _PaymentStatusState extends State<PaymentStatus> {


  bool _isVisible = false;
  bool _isVisible1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: const Color(0xff212529),
        appBar: AppBar(
          elevation:0,
          backgroundColor:const Color(0xff212529),
          title: Visibility(
            visible: _isVisible,
            child: const TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff212529),
                  hintStyle: TextStyle(
                      color: Color(0xffF5F5F7),
                      fontSize: 18
                  ),
                  hintText: 'Search for student',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xff353B41)
                      )
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xff353B41)
                      )
                  )
              ),
            ),
          ),
          leading: IconButton(
            color: const Color(0xffFFFFFF),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(icon: Visibility(
                visible: _isVisible1,
                child: const Icon(Icons.search,color: Color(0xffFFFFFF),)),onPressed: (){
              setState(() {
                _isVisible=!_isVisible;
                _isVisible1=!_isVisible1;
              });
            },)
          ],
        ),

        body: ListView(
          children: [
            const SizedBox(height: 25,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(Icons.payments_outlined,color: Colors.white,),
                SizedBox(width: 15,),
                ReusableTextByH(title: "Payments",size:18,weight: FontWeight.w400,color: Colors.white,)
              ],
            ),

            const SizedBox(height: 62),
            const TabBar(
                unselectedLabelColor: Color(0xffE5E5E5),
                labelColor: Color(0xffFFFFFF),
                indicatorColor: Colors.transparent,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w600
                ),
                tabs: [
                  Tab(text: 'All',),
                  Tab(text: 'Paid',),
                  Tab(text: 'Upcoming',),
                  Tab(text: 'Late',),
                ]),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child:  const TabBarView(children: [
                AllPaymentDetail(),
                PaidPaymentDetail(),
                UpcomingPayment(),
               LatePaymentDetail(),
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
