import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImagesStepper extends StatefulWidget {
  @override
  _ImagesStepperState createState() => _ImagesStepperState();
}

class _ImagesStepperState extends State<ImagesStepper> {
  bool isLoading = false;
  bool isFetched = false;

  List<String> path = [
    "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG9tZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
    "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildImages();
  }

  Widget buildImages() {
    return SizedBox(
      height: 200, //MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: CarouselSlider(
        items: path.map((e) {
          return Builder(builder: (BuildContext context) {
            return Image.network(
              e,
              fit: BoxFit.fill,
              width: double.infinity,
            );
          });
        }).toList(),
        options: CarouselOptions(
          height: 200,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
