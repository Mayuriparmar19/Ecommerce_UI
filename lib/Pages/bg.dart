import 'package:flutter/material.dart';

class BgForProduct extends StatefulWidget {
  const BgForProduct({super.key});

  @override
  State<BgForProduct> createState() => _BgForProductState();
}

class _BgForProductState extends State<BgForProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: -8,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/Images/Vector (2).png'),
                        fit: BoxFit.cover)),
              )),
        ],
      ),
    );
  }
}
