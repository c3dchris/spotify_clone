import 'package:flutter/material.dart';

class IconBackButton extends StatelessWidget {
  VoidCallback onpressed;
  IconBackButton({required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 36),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
