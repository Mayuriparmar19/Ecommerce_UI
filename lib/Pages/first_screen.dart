import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Pages/back.dart';
import 'package:foodapp_ui/Pages/bottom_nav.dart';

import '../Constants/conste.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double topPadding = screenHeight * 0.35;
    return Scaffold(
      body: Stack(
        children: [
          const Back(),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding:   EdgeInsets.only(top: topPadding),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset(
                          'Assets/Images/Icon.svg',
                          height: 110,
                          width: 130,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        BoldText(
                          text: 'Non-Contact\n   Deliveries',
                          size: 25,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ModifiedText(
                          color: AppColors.secTextColor,
                          size: 18,
                          text:
                          "       When placing an order, select the option\n “Contactless delivery” and the courier will leave\n                          your order at the door.",
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          height: size.height * .06,
                          width: size.width * .90,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.btnColor,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BottomNavBar(),
                              ));
                            },
                            child: BoldText(
                              text: 'Order Now',
                              size: 19,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: ModifiedText(
                            text: 'Dismiss',
                            color: AppColors.secTextColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
