import 'package:flutter/material.dart';


class RepeatedTextField extends StatelessWidget {

  final Icon? RequiresIcon;
 final  String ? RequiresHintText;
 final TextEditingController? RequiresController;

  const RepeatedTextField({Key? key, this.RequiresIcon, this.RequiresHintText, this.RequiresController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: RequiresController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon:RequiresIcon,
        hintText: RequiresHintText,
        hintStyle:const  TextStyle(
          fontWeight:FontWeight.w400 ,fontSize: 16,color: Color(0xff212529)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide.none,

        )
      ),
    );
  }
}
