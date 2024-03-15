import 'package:flutter/material.dart';
import 'package:tolaby_app/components/navbar_persistant.dart';
import 'package:tolaby_app/constant/theme/light_theme.dart';

import 'package:tolaby_app/screens/home.dart';
import 'package:tolaby_app/screens/login.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: get_light_theme(),
        // ThemeData(
        //     // primaryColor: Color(0xFF2661FA),
        //     // primaryColorLight: Colors.amber,
        //     primaryColor: Colors.amber,
        //     // scaffoldBackgroundColor: Colors.black,
        //     visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Login());
  }
}
