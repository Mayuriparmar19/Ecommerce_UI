import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Pages/first_screen.dart';
import 'package:foodapp_ui/Pages/shop.dart';
import 'package:foodapp_ui/Pages/user.dart';

import 'cat.dart';

/// Flutter code sample for [BottomNavigationBar].


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() =>
      _BottomNavBarState();
}

class _BottomNavBarState
    extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> screens1 = [
  const Home(),
  const Cart(),
  const Profile(),

  ];
  static const List<Widget> screens = <Widget>[
  Home(),
  Cart(),
  Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2,color:_selectedIndex==0? AppColors.selected: AppColors.secTextColor,size: 25,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart,color: _selectedIndex==1? AppColors.selected: AppColors.secTextColor,size: 25,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(

              CupertinoIcons.person,color:_selectedIndex==2? AppColors.selected: AppColors.secTextColor,size: 25,),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.selected,
        onTap: _onItemTapped,
      ),
    );
  }
}
