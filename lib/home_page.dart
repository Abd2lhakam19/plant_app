import 'package:flutter/material.dart';
import 'package:plant_app/items.dart';
import 'package:plant_app/pooular_items.dart';
import 'package:plant_app/tabs/cart_tab.dart';
import 'package:plant_app/tabs/favorit_tab.dart';
import 'package:plant_app/tabs/home_tab.dart';
import 'package:plant_app/tabs/settings_tab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10, bottom: 5),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              height: 40,
              width: 40,
              child: Image.asset("assets/images/myphoto.jpg"),
            ),
          ),
        ],
      ),
      body:tab[index] ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        elevation: 0.0,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "", backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}

List<Widget> tab = [
  HomeTab(),
  FavouritTab(),
  CartTab(),
  SettingsTab()
];
