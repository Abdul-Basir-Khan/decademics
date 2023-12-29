import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      backgroundColor: Color(0xff40A647),
      child: Center(
        child: Icon(
          Icons.arrow_forward_ios,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
