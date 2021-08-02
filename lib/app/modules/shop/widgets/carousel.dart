import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_food_app/core/values/colors.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 115,
            viewportFraction: 1,
            initialPage: _currentIndex,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: widget.imageList.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  child: Image.network(url),
                  borderRadius: BorderRadius.circular(8),
                ).marginSymmetric(horizontal: 1);
              },
            );
          }).toList(),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: widget.imageList.asMap().entries.map((entry) {
                return Container(
                  width: _currentIndex == entry.key ? 24 : 12,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.green
                          .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4)),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
