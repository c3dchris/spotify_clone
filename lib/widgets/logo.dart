import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  SvgPicture picture;
  Logo({required this.picture});
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 196,
      height: 59,
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.only(top: 42),
      child: picture,
    );
  }
}
