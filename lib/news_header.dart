import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsHeader extends StatefulWidget {
  @override
  _NewsHeaderState createState() => _NewsHeaderState();
}

final List<String> imgList = [
  'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/18/813416752/813416752_bb2069b3-e0a0-45c0-9cfa-cc52ce468193_1080_1080.jpg',
  'https://kecemedia.com/wp-content/uploads/2020/06/IMG_8379-851x1024.jpg',
  'https://fazzcard.com/wp-content/uploads/2019/11/Hoi-Polloy-1024x1024.jpg',
  'https://cdn.shopify.com/s/files/1/0404/7552/5283/products/Low0_1920x1200_crop_center@2x.jpg?v=1600143972',
  'https://startfriday.co.id/wp-content/uploads/2018/08/erigo-1024x1024.jpg',
  'https://images.f2fcdn.net/files/amel/fashion/brand-lokal-nyentrik/40917218-146095092995653-3259386042578578583-n.jpg'
];

int _current = 0;

class _NewsHeaderState extends State<NewsHeader> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 700.0,
                    height: 500.0,
                  ),
                ],
              ),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 350,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              aspectRatio: 1.0,
              viewportFraction: 1,
              enlargeCenterPage: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, pageNum) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imageSliders,
          ),
        ),
        Positioned(
          bottom: 5,
          left: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 7.0,
                height: 7.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(255, 255, 255, 1)
                      : Color.fromRGBO(255, 255, 255, 0.5),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
