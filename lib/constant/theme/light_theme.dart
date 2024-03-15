 

import 'package:flutter/material.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

ThemeData get_light_theme() => ThemeData(
    iconTheme: const IconThemeData(color: colors_light_theme.primary_color),
    primaryColor: colors_light_theme.primary_color,

    textTheme: const TextTheme(
      titleLarge: TextStyle(color: colors_light_theme.font_color_black ,fontSize: 30, fontFamily: 'hh'),
      titleMedium: TextStyle(color: colors_light_theme.font_color_black,fontSize: 22, fontFamily: 'hh'),
      titleSmall:
          TextStyle(fontSize: 13, fontFamily: 'hh', color: colors_light_theme.color_white),
    ));
