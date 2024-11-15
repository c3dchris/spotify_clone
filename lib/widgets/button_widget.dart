import 'package:flutter/material.dart';
import 'package:spotify_clone/constats/appcolor.dart';
class ButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  double size;
  double width;
  double height;
  Color? color;
  //0xFF42C83C
  ButtonWidget({required this.text, required this.onpressed, this.size = 22, this.width = 325, this.height = 80, this.color = Colors.green});
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: size,
              fontWeight: FontWeight.w700,
              color: AppColor.headerText,
            ),
          ),
        ),
      ),
    );
  }
}
