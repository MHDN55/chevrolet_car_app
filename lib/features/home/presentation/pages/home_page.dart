import 'package:chevrolet_car_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Chevrolet",
          style: TextStyles.font27WhiteItaliana,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    cars[index].name,
                    style: TextStyles.font28WhiteJavanese,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: ClipPath(
                    clipper: HalfCircleClipper(),
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.arcToPoint(
      Offset(0, size.height),
      radius: Radius.circular(size.width / 2),
      clockwise: true,
    );
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
