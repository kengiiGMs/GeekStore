import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Carrosel extends StatefulWidget {
  const Carrosel({Key? key}) : super(key: key);

  @override
  State<Carrosel> createState() => _CarroselState();
}

class _CarroselState extends State<Carrosel> {
  int _current = 0;
  List imgList = [
        'OnePiece.jpg'
        'Jujutsu.jpg'
        'Nanatsu.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          ),
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                    image: AssetImage('OnePiece.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                    image: AssetImage('Jujutsu.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                    image: AssetImage('Nanatsu.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              aspectRatio: 16 / 7,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 6),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}