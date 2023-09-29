import 'package:flutter/material.dart';
import 'package:plant_app/home_page.dart';
import 'package:plant_app/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        HomePage.routeName:(context)=>HomePage(),
      },
    );
  }
}
