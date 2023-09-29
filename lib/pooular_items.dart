import 'package:flutter/material.dart';

class PopularItemsTemplet extends StatelessWidget {
  String img;
  PopularItemsTemplet(this.img);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(0,3),
                      blurRadius: 3.5
                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(img,height: 70,width: 70,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Succulent",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                    Text(
                      "\$75\.00",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
