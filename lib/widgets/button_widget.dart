import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  double size;

  ButtonWidget({required this.text, required this.onpressed, this.size = 22});
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onpressed,
      child: Container(
        width: 329,
        height: 92,
        decoration: BoxDecoration(
          color: Color(0xFF42C83C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: size,
              fontWeight: FontWeight.w700,
              color: Color(0xFFF6F6F6),
            ),
          ),
        ),
      ),
    );
  }
}
