import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constats/appcolor.dart';
import '../widgets/button_widget.dart';
import '../widgets/icon_back_button.dart';
import '../widgets/logo.dart';
import 'homepage.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.primaryColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  IconBackButton(onpressed: () => Navigator.pop(context)),
                  Container(
                    width: 108,
                    margin: EdgeInsets.only(left: 88),
                    child: Logo(
                      picture: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 47),
            Container(
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      color: AppColor.headerText,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'if you need any support? ',
                      style: TextStyle(
                        color: Color(0xffE1E1E1),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: 'click here',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26),
                  Container(
                    //Todo full name container
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 334,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.14),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            padding:
                            EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'Full Name',
                                  hintStyle:
                                  TextStyle(color: Color(0xffA7A7A7))),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        //Todo email container
                        Container(
                          width: 334,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.14),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            padding:
                            EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                            child: TextField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'Enter Email',
                                  hintStyle:
                                  TextStyle(color: Color(0xffA7A7A7))),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),

                        Container(
                          width: 334,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.14),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          //Todo passowrd container
                          child: Container(
                            padding:
                            EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
                            child: TextField(
                              onChanged: (value){},
                              maxLines: 1,
                              decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'passord',
                                  hintStyle:
                                  TextStyle(color: Color(0xffA7A7A7))),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ButtonWidget(text: 'Create Account', onpressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()))),
                        SizedBox(height: 21),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 146,
                              height: 1,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff252525),
                                    Color(0xff5b5b5b),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 11),
                            Text(
                              'Or',
                              style: TextStyle(
                                color: Color(0xff383838),
                              ),
                            ),
                            SizedBox(width: 11),
                            Container(
                              width: 146,
                              height: 1,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff252525),
                                    Color(0xff5b5b5b),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset('assets/images/googleimage.svg'),
                            SizedBox(width: 56),
                            SvgPicture.asset('assets/images/appleimage.svg'),
                          ],
                        ),
                        SizedBox(height: 31),
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'Do you have an account? ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                children: [
                                  TextSpan(
                                      text: 'sign in',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      )
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
