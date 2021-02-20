import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return AnimatedBuilder(
        animation: AppController.instance, 
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.red
            ),
            home: HomePage(),
          );
        },
    );
  }

}