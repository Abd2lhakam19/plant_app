import 'package:flutter/material.dart';

class ItemTemplate extends StatelessWidget {
  String img;
  ItemTemplate(this.img);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 2, color: Colors.green)),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            height: 280,
            width: 200,
          ),
        ),
      ),
    );
  }
}
