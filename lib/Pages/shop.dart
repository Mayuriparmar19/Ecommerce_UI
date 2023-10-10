import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import '../Constants/conste.dart';
import 'card_payment.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool selectedValues = false;
  bool selectedValues1 = true;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
          },
          icon: Icon(
            CupertinoIcons.back,
            color: AppColors.primaryColor,
            size: 25,
          ),
        ),
        title: BoldText(
            text: 'Checkout', size: w! / 22, color: AppColors.primaryColor),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Material(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: 'Payment method',
                              size: w! / 20,
                              color: AppColors.primaryColor),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CardPay()));
                              },
                              child: BoldText(
                                text: 'CHANGE',
                                size: w! / 25,
                                color: AppColors.selected,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage(
                                'Assets/Images/credit-card.png'),
                            color: AppColors.primaryColor,
                          ),
                          SizedBox(
                            width: w! / 34,
                          ),
                          ModifiedText(
                              text: '**** **** **** 4747',
                              size: w! / 20,
                              color: AppColors.secTextColor)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Material(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: 'Delivery address',
                              size: w! / 20,
                              color: AppColors.primaryColor),
                          TextButton(
                              onPressed: () {},
                              child: BoldText(
                                text: 'CHANGE',
                                size: w! / 25,
                                color: AppColors.selected,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: AppColors.primaryColor,
                            size: 28,
                          ),
                          SizedBox(
                            width: w! / 34,
                          ),
                          ModifiedText(
                              text:
                                  'Alexandra Smith\nCesu 31 k-2 5.st, SIA Chili \nRiga\nLV–1012\nLatvia',
                              size: w! / 22,
                              color: AppColors.secTextColor)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Material(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: 'Delivery options',
                              size: w! / 20,
                              color: AppColors.primaryColor),
                          TextButton(
                              onPressed: () {},
                              child: BoldText(
                                text: 'CHANGE',
                                size: w! / 25,
                                color: AppColors.selected,
                              )),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(
                            Icons.directions_walk,
                            color: selectedValues == true
                                ? AppColors.selected
                                : AppColors.primaryColor,
                          ),
                          title: ModifiedText(
                            text: 'I’ll pick it up myself',
                            size: w! / 22,
                            color: selectedValues == true
                                ? AppColors.selected
                                : AppColors.secTextColor,
                          ),
                          trailing: selectedValues == true
                              ? Icon(
                                  Icons.check,
                                  color: selectedValues == true
                                      ? AppColors.selected
                                      : AppColors.primaryColor,
                                )
                              : null,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(
                            Icons.directions_bike,
                            color: selectedValues == true
                                ? AppColors.selected
                                : AppColors.primaryColor,
                          ),
                          title: ModifiedText(
                            text: 'By courier',
                            size: w! / 22,
                            color: selectedValues == true
                                ? AppColors.selected
                                : AppColors.secTextColor,
                          ),
                          trailing: selectedValues == true
                              ? Icon(
                                  Icons.check,
                                  color: selectedValues == true
                                      ? AppColors.selected
                                      : AppColors.primaryColor,
                                )
                              : null,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          selectedValues1 = true;
                        },
                        child: ListTile(
                          leading: Image.asset(
                            'Assets/Images/Drone.png',
                            color: selectedValues1 == true
                                ? AppColors.selected
                                : AppColors.primaryColor,
                          ),
                          title: ModifiedText(
                            text: 'By Drone',
                            size: w! / 22,
                            color: selectedValues1 == true
                                ? AppColors.selected
                                : AppColors.secTextColor,
                          ),
                          trailing: selectedValues1 == true
                              ? Icon(
                                  Icons.check,
                                  color: selectedValues1 == true
                                      ? AppColors.selected
                                      : AppColors.primaryColor,
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                              text: 'Non-contact-delivery',
                              size: w! / 20,
                              color: AppColors.primaryColor),
                          AnimatedSwitch(
                            textOn: "Yes",
                            colorOn: AppColors.selectedBg,
                            textOff: "No",
                            colorOff: AppColors.secTextColor,
                            textStyle: TextStyle(
                                color: AppColors.selected, fontSize: w! / 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
