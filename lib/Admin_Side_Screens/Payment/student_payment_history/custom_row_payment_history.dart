import 'package:flutter/material.dart';

import '../../../Instructor_Side_constants/reusable_text.dart';
import '../dialogs/payment_status.dart';


class CustomRowPaymentHistory extends StatefulWidget {

  final String statusTextH;
  final Color requiresContainerColorH;

  const CustomRowPaymentHistory({Key? key, required this.statusTextH, required this.requiresContainerColorH,}) : super(key: key);

  @override
  State<CustomRowPaymentHistory> createState() => _CustomRowPaymentHistoryState();
}

class _CustomRowPaymentHistoryState extends State<CustomRowPaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 12,width: 36,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff596469),
                  ),
                  child: Center(
                    child:ReusableTextByH(title:'Clover',size:8,weight: FontWeight.w400,color: Colors.white,) ,
                  ),
                ),
        SizedBox(height: 5,),
        ReusableTextByH(title:'\$200',size:14,weight: FontWeight.w400,color:Color(0xffFFFFFF),),
                SizedBox(height: 5,),
        ReusableTextByH(title:'Nov 21 2022',size:12,weight: FontWeight.w400,color:Color(0xffFFFFFF),),
                SizedBox(height: 5,),


              ],
            ),
            Spacer(),
            InkWell(
              onTap: (){
                setState(() {
                  showDialog(context: context, builder: (BuildContext context) { return PaymentStatusDialog(); },);

                });
              },
              child: Container(
                height: 26,width: 86,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.requiresContainerColorH,
                ),
                child: Center(
                  child:ReusableTextByH(title:widget.statusTextH,size:12,weight: FontWeight.w400,color: Colors.white,) ,
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
