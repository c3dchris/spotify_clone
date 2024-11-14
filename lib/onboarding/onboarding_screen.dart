import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/widgets/button_widget.dart';
import 'package:spotify_clone/authpage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/billiimage.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 196,
                height: 59,
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(top: 42),
                child: SvgPicture.asset('assets/images/logo.svg'),
              ),

              SizedBox(height: 340),
              Column(
                children: [
                  Text(
                    'Choose Mode',
                    style: TextStyle(
                      color: Color(0xffDADADA),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            height: 73,
                            width: 73,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700.withOpacity(1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                'assets/images/darkicon.svg',
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Text(
                            'Dark mode',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffDADADA),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 71),
                      Column(
                        children: [
                          Container(
                            height: 73,
                            width: 73,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700.withOpacity(1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                'assets/images/lighticon.svg',
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Text(
                            'Dark mode',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffDADADA),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
              ButtonWidget(
                text: "Continue",
                onpressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Authpage()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
