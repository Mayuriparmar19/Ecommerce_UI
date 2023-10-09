import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Pages/probg.dart';

import '../Constants/conste.dart';

class Product1 extends StatefulWidget {
  const Product1({super.key});

  @override
  State<Product1> createState() => _Product1State();
}

class _Product1State extends State<Product1> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    double screenHeight = MediaQuery.of(context).size.height;
    double topPadding = screenHeight * 0.27;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const ProductBg(),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                    flex: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: topPadding),
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(35)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 22,
                              ),
                              child: BoldText(
                                  text: 'Boston Lettuce',
                                  size: w! / 18.5,
                                  color: AppColors.primaryColor),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Row(
                                children: [
                                  BoldText(
                                      text: '1.10',
                                      size: w! / 18,
                                      color: AppColors.primaryColor),
                                  ModifiedText(
                                      text: ' € / piece',
                                      size: w! / 20,
                                      color: AppColors.secTextColor)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: ModifiedText(
                                  text: '~ 150 gr / piece',
                                  size: w! / 20,
                                  color: AppColors.btnColor),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: BoldText(
                                  text: 'Spain',
                                  size: w! / 17,
                                  color: AppColors.primaryColor),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: ModifiedText(
                                text:
                                    'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                                size: w! / 23,
                                color: AppColors.secTextColor,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 50,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: AppColors.white,
                                            side: BorderSide(
                                                color: AppColors.borderColor)),
                                        onPressed: () {},
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          color: AppColors.secTextColor,
                                        ))),
                                Container(
                                    height: 50,
                                    width: 230,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                AppColors.btnColor),
                                        onPressed: () {},
                                        icon: const Icon(CupertinoIcons.cart),
                                        label: ModifiedText(
                                          text: 'Add to cart',
                                          size: w! / 20,
                                          color: AppColors.white,
                                        )))
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
