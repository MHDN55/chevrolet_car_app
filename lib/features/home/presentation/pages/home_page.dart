import 'package:chevrolet_car_app/core/theming/colors_manager.dart';
import 'package:chevrolet_car_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int newPage = _pageController.page?.round() ?? 0;
      if (newPage != currentPage) {
        setState(() {
          currentPage = newPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Chevrolet",
          style: TextStyles.font27WhiteItaliana,
        ),
      ),
      body: Stack(
        children: [
          // Half Circle
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: ClipPath(
              clipper: HalfCircleClipper(),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: screenHight * 0.5,
                width: 200,
                color: cars[currentPage % cars.length].color,
              ),
            ),
          ),
          // Smoth Page Indicator
          Align(
            alignment: const Alignment(0, 0.8),
            child: SmoothPageIndicator(
              effect: const JumpingDotEffect(
                dotHeight: 5,
                dotColor: ColorsManager.customGrey,
                activeDotColor: ColorsManager.customWhite,
              ),
              controller: _pageController,
              count: cars.length,
            ),
          ),
          // Page View (Car Image - Name - Full Name)
          SizedBox(
            height: screenHight,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    // Car Image
                    Align(
                      alignment: const AlignmentDirectional(-0.2, 0.25),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.pushNamed(
                            Routes.detailsPage,
                            pathParameters: {
                              'index': index.toString(),
                            },
                          );
                        },
                        child: Image.asset(
                          cars[index].image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    // Car Name
                    Align(
                      alignment: const Alignment(0, -0.9),
                      child: Text(
                        cars[index].name,
                        style: TextStyles.font28WhiteJavanese,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.7, 0.65),
                      child: Text(
                        cars[index].fullName,
                        style: TextStyles.font22WhiteBesley,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
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
