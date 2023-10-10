import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import '../Constants/conste.dart';

class CardPay extends StatefulWidget {
  const CardPay({super.key});

  @override
  State<CardPay> createState() => _CardPayState();
}

class _CardPayState extends State<CardPay> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: AppColors.primaryColor,
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: BoldText(
                  text: 'Credit / Debit card',
                  size: w!/18,
                  color: AppColors.primaryColor),
            ),
            Image(
              image: const AssetImage('Assets/Images/carimg.png'),
              fit: BoxFit.cover,
              height: w! / 1.3,
            ),
            const Center(
              child: Image(
                image: AssetImage('Assets/Images/Take a photo icon.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ModifiedText(
                  text: 'Name on card',
                  size: w! / 25,
                  color: AppColors.secTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: TextFormField(
                showCursor: false,
                decoration: InputDecoration(
                  hintText: 'EX:Abc Xyz',
                  hintStyle:
                      TextStyle(color: AppColors.secTextColor, fontSize: 15),
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.secTextColor)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColors.borderColor,
                    ),
                  ),
                  focusColor: AppColors.white,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ModifiedText(
                  text: 'Card number',
                  size: w! / 25,
                  color: AppColors.secTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: TextFormField(
                keyboardType: TextInputType.number,
                showCursor: false,
                decoration: InputDecoration(
                  suffixIcon: Image.asset('Assets/Images/mc_symbol 1.png'),
                  hintText: 'EX:4747  4747  4747  4747',
                  hintStyle:
                      TextStyle(color: AppColors.secTextColor, fontSize: 15),
                  filled: true,
                  fillColor: AppColors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.secTextColor)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColors.borderColor,
                    ),
                  ),
                  focusColor: AppColors.white,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: ModifiedText(
                          text: 'Expiry date',
                          size: w! / 25,
                          color: AppColors.secTextColor),
                    ),
                    SizedBox(
                      width: size.width * 0.18,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: ModifiedText(
                          text: 'CVV',
                          size: w! / 25,
                          color: AppColors.secTextColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                          height: 50,
                          width: 160,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'EX:09/24',
                              hintStyle: TextStyle(
                                  color: AppColors.secTextColor, fontSize: w!/26),
                              filled: true,
                              fillColor: AppColors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.secTextColor)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: AppColors.borderColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: AppColors.borderColor,
                                ),
                              ),
                              focusColor: AppColors.white,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                          height: 50,
                          width: 160,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            showCursor: false,
                            decoration: InputDecoration(
                              suffixIcon: Image.asset('Assets/Images/Hint.png'),
                              hintText: 'EX:456',
                              hintStyle: TextStyle(
                                  color: AppColors.secTextColor, fontSize: w!/26),
                              filled: true,
                              fillColor: AppColors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.secTextColor)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: AppColors.borderColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: AppColors.borderColor,
                                ),
                              ),
                              focusColor: AppColors.white,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    height: size.height * .06,
                    width: size.width * .90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.btnColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => const BottomNavBar(),
                        // ));
                      },
                      child: BoldText(
                        text: 'Use this card',
                        size: w!/20,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
