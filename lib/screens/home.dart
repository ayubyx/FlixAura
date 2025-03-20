import 'package:fixaura/resource/data.dart';
import 'package:fixaura/utils/bar.dart';
import 'package:fixaura/utils/carousel_tile.dart';
import 'package:fixaura/utils/movie_tile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../resource/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 34,
        alignment: Alignment.center,
        child: Bar(),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 65),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              spacing: 20,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyle(
                          fontFamily: 'GeneralSans',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Movie Magic Awaits!',
                      style: TextStyle(
                          fontFamily: 'GeneralSans',
                          color: Clrs.lightwhit.withValues(alpha: 0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Now Showing',
              style: TextStyle(
                  fontFamily: 'GeneralSans',
                  color: Clrs.whit,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          CarouselSlider.builder(
              itemCount: sliders.length,
              itemBuilder: (context, index, realIndex) {
                return CarouselTile(
                  image: sliders[index].img,
                  title: sliders[index].title,
                );
              },
              options: CarouselOptions(
                  height: 175,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  })),
          SizedBox(height: 8),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: sliders.length,
              effect: WormEffect(
                  dotWidth: 8, dotHeight: 8, activeDotColor: Clrs.whit),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Action',
                  style: TextStyle(
                      fontFamily: 'GeneralSans',
                      color: Clrs.whit,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text('View All',
                    style: TextStyle(
                      fontFamily: 'GeneralSans',
                      color: Clrs.lightwhit,
                      fontSize: 16,
                    ))
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MovieTile(
                    image: movies[index].img,
                    title: movies[index].title,
                  );
                },
                separatorBuilder: (conext, indx) {
                  return SizedBox(width: 18);
                },
                itemCount: movies.length),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sci-Fi',
                  style: TextStyle(
                      fontFamily: 'GeneralSans',
                      color: Clrs.whit,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text('View All',
                    style: TextStyle(
                      fontFamily: 'GeneralSans',
                      color: Clrs.lightwhit,
                      fontSize: 16,
                    ))
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 15),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MovieTile(
                    image: scifi[index].img,
                    title: scifi[index].title,
                  );
                },
                separatorBuilder: (conext, indx) {
                  return SizedBox(width: 18);
                },
                itemCount: movies.length),
          ),
        ],
      ),
    );
  }
}
