import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_clone/onboarding/onboarding_screen.dart';
import 'package:spotify_clone/startup_page.dart';

void main() {
  runApp(
    const SpotifyClone(),
  );
}

class SpotifyClone extends StatefulWidget {
  const SpotifyClone({super.key});

  @override
  State<SpotifyClone> createState() => _SpotifyCloneState();
}

class _SpotifyCloneState extends State<SpotifyClone> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartupPage(),
    );
  }
}
