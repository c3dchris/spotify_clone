import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/constats/appcolor.dart';
import 'package:spotify_clone/onboarding/onboarding_screen.dart';
import 'package:spotify_clone/widgets/button_widget.dart';
import 'package:spotify_clone/widgets/logo.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/startedimage.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
         Logo(picture: SvgPicture.asset('assets/images/logo.svg')),
          SizedBox(height: 403),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 53),
            child: Text(
              maxLines: 1,
              'Enjoy listening to music',
              style: TextStyle(
                fontSize: 19,
                color: AppColor.headerColor3,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 21),
          Container(
            width: 297,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. S"
              "agittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
              textAlign: TextAlign.center,
              maxLines: 4,
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.none,
                color: AppColor.headerText2,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 37),
          ButtonWidget(
            text: 'Get Started',
            onpressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnboardingScreen())),
          )
        ],
      ),
    );
  }
}
