import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Constants/conste.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductBg extends StatefulWidget {
  const ProductBg({super.key});

  @override
  State<ProductBg> createState() => _ProductBgState();
}

class _ProductBgState extends State<ProductBg> {
  final controller = PageController(
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        3,
        (index) => Container(
              // padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Container(
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Assets/Images/pro_ind.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ));
    // Size size = MediaQuery.of(context).size;
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
              height: 350,
              width: double.maxFinite,
              child: CarouselSlider.builder(
                itemCount: pages.length,
                options: CarouselOptions(
                  height: 650,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInToLinear,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    padding: EdgeInsets.zero,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Assets/Images/pro_ind.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 90),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: AnimatedSmoothIndicator(
                            activeIndex: index,
                            count: 3,
                            effect: SlideEffect(
                                type: SlideType.slideUnder,
                                spacing: 8.0,
                                radius: 4.0,
                                dotWidth: 8.0,
                                dotHeight: 8.0,
                                paintStyle: PaintingStyle.fill,
                                strokeWidth: 1.5,
                                dotColor: AppColors.white.withOpacity(0.09),
                                activeDotColor: AppColors.white),
                          )),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
