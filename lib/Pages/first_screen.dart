import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Pages/back.dart';
import 'package:foodapp_ui/Pages/bottom_nav.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

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
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          const Back(),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: topPadding),
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
                          size: w!/21.5,
                          text:
                              "       When placing an order, select the option\n“Contactless delivery” and the courier will leave\n                          your order at the door.",
                        ),
                         SizedBox(
                          height: size.height*0.03,
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
                              size: w!/20,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          onPressed: () {
                           Get.defaultDialog(
                              title: 'Exit',
                              titleStyle: TextStyle(color: AppColors.primaryColor,fontSize: w!/16,fontWeight:FontWeight.w900,),
                              titlePadding: const EdgeInsets.all(2),
                              middleText: 'Are you sure You want to Exit',
                              middleTextStyle: TextStyle(color: AppColors.secTextColor,fontSize: w!/20),
                              contentPadding: const EdgeInsets.all(10),
                              confirm: TextButton(

                                  onPressed: () {
                                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                                    // Get.back();
                                  },
                                  child: ModifiedText(text: 'Yes',color: AppColors.selected,size: w!/20,)),
                              cancel: TextButton(

                                  onPressed: () {
                                    Navigator.pop(context);
                                  }, child:ModifiedText(text: 'No',color: AppColors.selected,size: w!/20,)),
                              // content: Column(
                              //    children: [
                              //       Text('hey'),
                              // with the use of content you can add multiple lines in dialog box
                              //    ],
                              // )
                            );
                          },
                          child: ModifiedText(
                            text: 'Dismiss',
                            color: AppColors.secTextColor,
                            size: w!/20,
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
