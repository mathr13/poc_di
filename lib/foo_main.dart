import 'package:flutter/material.dart';
import 'package:poc_di/Utilities/injector.dart';
import 'package:poc_di/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'controllers/funds_controller.dart';

class FooApp extends StatelessWidget {

  const FooApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: getIt.get<FundsController>(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }

}