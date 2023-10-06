import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Components/text.dart';
import 'package:foodapp_ui/Constants/colors.dart';

import '../Constants/conste.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
         backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon:  Icon(CupertinoIcons.back,color: AppColors.primaryColor,size: 25,),),
        title: BoldText(text: 'Checkout', size: w!/22, color: AppColors.primaryColor),centerTitle: true,

      ),
      body: Column(
        children: [
             Expanded(child: ListView.builder(itemBuilder: (context,index){
                   return Material(
                     child: Column(
                        
                     ),

                   );
             })
    )

        ],
      ),
    );
  }
}
