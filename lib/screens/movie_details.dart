import 'package:fixaura/resource/colors.dart';
import 'package:fixaura/resource/data.dart';
import 'package:fixaura/utils/bar.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  MovieDetails({super.key});

  final List<String> genres = ['Action', 'Adventure', 'History', 'Drama'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 34,
        alignment: Alignment.center,
        child: Bar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 309,
                width: 393,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Rectangle 15.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          alignment: Alignment.center,
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                              color: Clrs.prpl.withValues(alpha: 0.6),
                              borderRadius: BorderRadius.circular(18)),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 20),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                              color: Clrs.prpl.withValues(alpha: 0.6),
                              borderRadius: BorderRadius.circular(18)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.align_horizontal_center_sharp,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 20),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'assets/images/zoom.png',
                            width: 20,
                            height: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 20),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/play.png',
                                width: 20,
                                height: 20,
                              ),
                              Text(
                                '01:05',
                                style: TextStyle(
                                    fontFamily: 'GeneralSans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 8,
                              decoration: BoxDecoration(
                                color: Clrs.prpl,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 8,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The Last Kingdom',
                      style: TextStyle(
                          fontFamily: 'GeneralSans',
                          color: Clrs.whit,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Icon(Icons.download, size: 24, color: Colors.white),
                        Icon(Icons.more_horiz, size: 24, color: Colors.white),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text('2023',
                    style: TextStyle(
                        fontFamily: 'GeneralSans',
                        color: Clrs.lightwhit,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, bottom: 8),
                child: Text('Genre',
                    style: TextStyle(
                        fontFamily: 'GeneralSans',
                        color: Clrs.lightwhit,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(4, (index) {
                        return Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Clrs.prpl),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            genres[index],
                            style: TextStyle(
                                fontFamily: 'GeneralSans',
                                color: Clrs.prpl,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        );
                      })
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15),
                height: 134,
                width: 393,
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plot',
                      style: TextStyle(
                          color: Clrs.whit,
                          fontFamily: 'GeneralSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'GeneralSans',
                            color: Clrs.whit.withValues(alpha: 0.6),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                        'In the wake of king Edwar\'s death, Uhtred of Bebbangburg and his comrades adventures across a fractured kingdom in the hopes of uniting England at last.')
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 15),
                height: 138,
                width: 449,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Casts',
                      style: TextStyle(
                          color: Clrs.whit,
                          fontFamily: 'GeneralSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    SizedBox(
                        height: 100,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: actors.length,
                          itemBuilder: (context, index) {
                            return CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('${actors[index]}'),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 15);
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
