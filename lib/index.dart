import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app_ui/constants.dart';
import 'package:grocery_app_ui/views/cart.dart';
import 'package:grocery_app_ui/views/home.dart';
import 'package:grocery_app_ui/views/profile.dart';
import 'package:grocery_app_ui/views/search.dart';


class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;

  onTappedItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _viewsList = [
    Home(),
    Search(),
    Cart(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _viewsList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: onTappedItem,
        selectedIndex: _selectedIndex,
         items: [
           BottomNavyBarItem(icon: Icon(Icons.apps), title: Text('Home'),activeColor: kOrangeColor,inactiveColor: kBlackColor),
           BottomNavyBarItem(icon: Icon(Icons.search), title: Text('Search'),activeColor: kOrangeColor,inactiveColor: kBlackColor),
           BottomNavyBarItem(icon: Icon(Icons.shopping_cart), title: Text('Cart'),activeColor: kOrangeColor,inactiveColor: kBlackColor),
           BottomNavyBarItem(icon: Icon(FontAwesomeIcons.user), title: Text('Profile'),activeColor: kOrangeColor,inactiveColor: kBlackColor),
           


         ], 
        ),
      
    );
  }
}