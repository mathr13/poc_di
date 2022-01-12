import 'package:flutter/material.dart';
import 'package:poc_di/Utilities/utilities.dart';

import 'funds_listing_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text(
          "Mutual Funds"
        ).onTap(() => Navigation.navigateTo(context, const MutualFundsListing())),
      ),
    );
  }

}