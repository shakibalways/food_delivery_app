

import 'package:flutter/material.dart';
import 'package:food_delivery_apps/controller/getx/splash_screen.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/car_logo.png",
              height: 250,
              width: 250,
              fit: BoxFit.fitHeight,
            ),
            Text(
              "Food Delivery",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 50,),
         const CircularProgressIndicator(backgroundColor: Colors.white,),

          ],
        ),
      ),
    );
  }
}
