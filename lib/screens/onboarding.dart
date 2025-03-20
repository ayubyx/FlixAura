import 'package:fixaura/screens/home.dart';
import 'package:fixaura/utils/bar.dart';
import 'package:flutter/material.dart';

import '../resource/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.6,
              child: Image.asset('assets/images/ob.png',
                  fit: BoxFit.cover, width: double.infinity, height: 724),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Clrs.pc.withValues(alpha: 0.7),
                    Clrs.pc.withValues(alpha: 0.5),
                    Colors.transparent
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                )),
            Positioned(
                bottom: 50,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('FLIXAURA',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Clrs.whit,
                            fontFamily: 'Chillax')),
                    Text(
                      'No matter what your mood or preference,\nflixaura has the perfect movie or show to match.',
                      style: TextStyle(
                          fontSize: 16,
                          color: Clrs.lightwhit.withValues(alpha: 0.7),
                          fontFamily: 'GeneralSans'),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 353,
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Clrs.prpl,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              PageRouteBuilder(
                                transitionDuration: Duration(
                                    milliseconds: 500), // custom duration
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        Home(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ),
                              (route) => false,
                            );
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                fontFamily: 'GenerlSans',
                                color: Clrs.whit,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          )),
                    )
                  ],
                )),
            Align(alignment: Alignment.bottomCenter, child: Bar())
          ],
        ),
      ),
    );
  }
}
