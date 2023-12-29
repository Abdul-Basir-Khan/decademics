import 'package:flutter/material.dart';


class RepeatedTextFieldStd extends StatelessWidget {
  final Function(String v) ?onChanged;
  final Icon? RequiresIcon;
 final  String ? RequiresHintText;
 final TextEditingController? RequiresController;

  const RepeatedTextFieldStd({Key? key, this.RequiresIcon, this.RequiresHintText, this.RequiresController,  this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: RequiresController,
      onChanged: onChanged,
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
