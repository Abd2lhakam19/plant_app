import 'package:flutter/material.dart';
import 'package:plant_app/home_page.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Let\'s Plant With Us",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Bring nature home",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset("assets/images/Asset1.png")),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: (){
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                child: Text("Sign In",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),),
              ),
              TextButton(onPressed: (){},
                  child:Text("Create an account",style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),) ),
              TextButton(onPressed: (){},
                  child:Text("Forgot Password ? ",style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w600
                  ),) )
            ],
          ),
        ),
      ),
    );
  }
}
