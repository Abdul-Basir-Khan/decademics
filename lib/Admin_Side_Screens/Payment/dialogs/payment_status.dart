import 'dart:ui';

import 'package:deckademics/Admin_Side_Screens/Payment/dialogs/partial_full_paid_dialog.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_constants/reusable_text.dart';

class PaymentStatusDialog extends StatefulWidget {
  const PaymentStatusDialog({Key? key}) : super(key: key);

  @override
  State<PaymentStatusDialog> createState() => _PaymentStatusDialogState();
}

class _PaymentStatusDialogState extends State<PaymentStatusDialog> {

  bool isChecked=false;
  bool isChecked1=false;
  bool isChecked2=false;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Dialog(
        backgroundColor: const Color(0xFF353B41),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableTextByH(title:'Payment Method',size:20,weight: FontWeight.w400,color: Colors.white,) ,
                    const Spacer(),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:const Icon(Icons.close,color: Color(0xffFFFFFF),)),
                  ],
                ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.all(0),
              side: const BorderSide(
                color: Color(0xffFFFFFF)
              ),
              value: isChecked,
              activeColor: const Color(0xFF28B463), // filled color
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              title: const ReusableTextByH(title:'Paid In Full',size:15,weight: FontWeight.w400,color: Colors.white,),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.all(0),
              side: const BorderSide(
                color: Color(0xffFFFFFF)
              ),
              value: isChecked1,
              activeColor: const Color(0xFF28B463), // filled color
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value!;
                });
              },
              title: const ReusableTextByH(title:'Partial Payment',size:15,weight: FontWeight.w400,color: Colors.white,),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.all(0),
              side: const BorderSide(
                color: Color(0xffFFFFFF)
              ),
              value: isChecked2,
              activeColor: const Color(0xFF28B463), // filled color
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
              title: const ReusableTextByH(title:'Late Payment',size:15,weight: FontWeight.w400,color: Colors.white,),
            ),
                const SizedBox(height: 40,),
                InkWell(

                  onTap: (){
                    setState(() {
                      showDialog(context: context, builder: (BuildContext context) { return const PartialFullPaidDialog(); },);

                    });
                  },

                  child: Row(
                    children: [
                      const Spacer(),
                      ReusableTextByH(title:'Next',size:16,weight: FontWeight.w400,color: isChecked|isChecked1|isChecked2 == true?const Color(0xff28B463):const Color(0xffFFFFFF),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
