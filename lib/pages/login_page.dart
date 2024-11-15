import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/constats/appcolor.dart';
import 'package:spotify_clone/widgets/button_widget.dart';
import 'package:spotify_clone/widgets/icon_back_button.dart';
import 'package:spotify_clone/widgets/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: 80),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: AppColor.headerText,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 22),
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
                    SizedBox(height: 38),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 334,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(0.14),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              margin:
                                  EdgeInsets.only(top: 29, bottom: 29, left: 27),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Username or Email',
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
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(0.14),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              margin:
                                  EdgeInsets.only(top: 29, bottom: 29, left: 27),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Username or Email',
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
                          Text(
                            "Recovery Password",
                            style: TextStyle(
                              color: Color(0xffAEAEAE),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          ButtonWidget(text: 'Sign In', onpressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))),
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
                          SizedBox(height: 48),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Not a member? ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'register now',
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
      ),
    );
  }
}
