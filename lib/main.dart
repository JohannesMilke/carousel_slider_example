import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_example/widget/animated_card_widget.dart';
import 'package:flutter/material.dart';

import 'images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Carousel Slider';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: CarouselSlider.builder(
            itemCount: Images.frontCreditCards.length,
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              viewportFraction: 0.6,
            ),
            itemBuilder: (context, index) => AnimatedCardWidget(
              urlFront: Images.frontCreditCards[index],
            ),
          ),
        ),
      );
}
