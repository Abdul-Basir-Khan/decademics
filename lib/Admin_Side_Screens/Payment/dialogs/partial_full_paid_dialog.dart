import 'dart:ui';

import 'package:deckademics/Admin_Side_Screens/Payment/dialogs/payment_method_dialog.dart';
import 'package:flutter/material.dart';

import '../../../Instructor_Side_constants/reusable_text.dart';

class PartialFullPaidDialog extends StatefulWidget {
  const PartialFullPaidDialog({Key? key}) : super(key: key);

  @override
  State<PartialFullPaidDialog> createState() => _PartialFullPaidDialogState();
}

class _PartialFullPaidDialogState extends State<PartialFullPaidDialog> {
  TextEditingController textController = TextEditingController();



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
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableTextByH(title:'Partial Payment',size:20,weight: FontWeight.w400,color: Colors.white,) ,

                    const Spacer(),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:const Icon(Icons.close,color: Color(0xffFFFFFF),)),
                  ],
                ),
                const ReusableTextByH(title:'Payment Method',size:12,weight: FontWeight.w400,color:Color(0xffFFFFFF),),
                const SizedBox(height: 10,),
                Container(
                  height: 38,
                  child: TextField(

                    controller: textController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffFFFFFF),
                        prefixIcon: const Icon(Icons.attach_money_sharp,color: Color(0xff000000),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableTextByH(title:'Paid Amount: \$350 ',size:12,weight: FontWeight.w400,color:Color(0xffFFFFFF),),
                    Spacer(),
                    ReusableTextByH(title:'Total Amount: \$600',size:12,weight: FontWeight.w400,color:Color(0xffFFFFFF),),
                  ],
                ),
                const SizedBox(height: 90,),
                Row(
                  children: [
                    InkWell(

                        onTap: (){
                          setState(() {
                            Navigator.pop(context);

                          });
                        },



                        child: const ReusableTextByH(title:'Back',size:16,weight: FontWeight.w400,color:Color(0xffFFFFFF),)),
                    const Spacer(),
                    InkWell(
                        onTap: (){
                          setState(() {
                            showDialog(context: context, builder: (BuildContext context) { return const PaymentMethodDialog(); },);

                          });
                        },
                        child: ReusableTextByH(title:'Next',size:16,weight: FontWeight.w400,color: textController.text.isNotEmpty?const Color(0xff28B463):const Color(0xffFFFFFF),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
