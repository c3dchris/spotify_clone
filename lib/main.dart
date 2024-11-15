import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/get_started_screen.dart';
import 'package:spotify_clone/startup_page.dart';
import 'package:spotify_clone/widgets/logo.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SpotifyClone());
}

class SpotifyClone extends StatefulWidget {
  const SpotifyClone({super.key});

  @override
  State<SpotifyClone> createState() => _SpotifyCloneState();
}

class _SpotifyCloneState extends State<SpotifyClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(
        backgroundColor: Color(0xff0D0C0C),
        logo: Container(
          child: SvgPicture.asset('assets/images/logo.svg'),
        ),
        done: Done(GetStartedScreen()),
      ),
    );
  }
}
