import 'package:fixaura/screens/movie_details.dart';
import 'package:flutter/material.dart';

import '../resource/colors.dart';

class MovieTile extends StatelessWidget {
  final String image;
  final String title;

  const MovieTile({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 256,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration:
                        Duration(milliseconds: 300), // custom duration
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        MovieDetails(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'GeneralSans',
                    color: Clrs.lightwhit,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.more_horiz,
                size: 20,
                color: Clrs.whit,
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2023',
                style: TextStyle(
                    fontFamily: 'GeneralSans',
                    color: Clrs.whit,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2hr10min',
                style: TextStyle(
                  fontFamily: 'GeneralSans',
                  color: Clrs.lightwhit.withValues(alpha: 0.7),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
