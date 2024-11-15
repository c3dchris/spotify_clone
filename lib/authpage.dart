import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/pages/login_page.dart';
import 'package:spotify_clone/widgets/button_widget.dart';
import 'package:spotify_clone/widgets/icon_back_button.dart';
import 'package:spotify_clone/widgets/logo.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1B1B),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
           IconBackButton(onpressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()))),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/billi2.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 111),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 78, right: 77),
                    width: 235,
                    child: Logo(
                      picture: SvgPicture.asset('assets/images/logo.svg'),
                    ),
                  ),
                  SizedBox(height: 55),
                  Container(
                    margin: EdgeInsets.only(left: 48, right: 47),
                    width: 390,
                    child: Text(
                      'Enjoy Listening To Music',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffF2F2F2),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  Container(
                    //margin: EdgeInsets.only(top: 357),
                    child: Text(
                      'Spotify is a proprietary Swedish audio streaming and media services provider ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffA0A0A0),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonWidget(
                          text: 'Register',
                          onpressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          ),
                          size: 19,
                          width: 147,
                          height: 73,
                        ),
                        ButtonWidget(
                          text: 'Sign in',
                          onpressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          ),
                          size: 19,
                          width: 147,
                          height: 73,
                          color: null,
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
    );
  }
}
