import 'package:flutter/material.dart';

import '../Constants/colors.dart';
class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: AppColors.bg2.withOpacity(0.7),),
          child:Stack(
            children: [
              Positioned(
                  top :-220,
                  right: -240,
                  child: Container(
                    height: 880,
                    width: 600,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('Assets/Images/Ellipse 8.png'))),
                  )),
              Positioned(
                  top :-230,
                  right: -240,
                  child: Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('Assets/Images/Ellipse 9.png'))),
                  )),
              Positioned(
                  top :-210,
                  right: -240,
                  child: Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('Assets/Images/Ellipse 10.png'))),
                  )),
              Positioned(
                  top :-230,
                  right: -240,
                  child: Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('Assets/Images/Ellipse 12.png'))),
                  )),


            ],
          )




      ),
    );
  }
}
