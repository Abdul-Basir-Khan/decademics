import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../Instructor_Side_constants/reusable_text.dart';

class PaymentMethodDialog extends StatefulWidget {
  const PaymentMethodDialog({Key? key}) : super(key: key);

  @override
  State<PaymentMethodDialog> createState() => _PaymentMethodDialogState();
}

class _PaymentMethodDialogState extends State<PaymentMethodDialog> {

  bool isChecked=false;
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
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
                  title: const ReusableTextByH(title:'Paypal',size:15,weight: FontWeight.w400,color: Colors.white,),
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
                  title: const ReusableTextByH(title:'Clover',size:15,weight: FontWeight.w400,color: Colors.white,),
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
                  title: const ReusableTextByH(title:'Credit Card',size:15,weight: FontWeight.w400,color: Colors.white,),
                ),
                CheckboxListTile(
                  contentPadding: const EdgeInsets.all(0),
                  side: const BorderSide(
                      color: Color(0xffFFFFFF)
                  ),
                  value: isChecked3,
                  activeColor: const Color(0xFF28B463), // filled color
                  checkColor: Colors.white,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                  title: const ReusableTextByH(title:'Cash',size:15,weight: FontWeight.w400,color: Colors.white,),
                ),
                CheckboxListTile(
                  contentPadding: const EdgeInsets.all(0),
                  side: const BorderSide(
                      color: Color(0xffFFFFFF)
                  ),
                  value: isChecked4,
                  activeColor: const Color(0xFF28B463), // filled color
                  checkColor: Colors.white,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked4 = value!;
                    });
                  },
                  title: const ReusableTextByH(title:'Check',size:15,weight: FontWeight.w400,color: Colors.white,),
                ),
                const SizedBox(height: 40,),
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
                    ReusableTextByH(title:'Next',size:16,weight: FontWeight.w400,color: isChecked|isChecked1|isChecked2|isChecked3|isChecked4 == true?const Color(0xff28B463):const Color(0xffFFFFFF),),
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
