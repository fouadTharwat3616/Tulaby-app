import 'package:flutter/material.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

// ignore: camel_case_types
class Option_sub extends StatefulWidget {
  const Option_sub({super.key});

  @override
  State<Option_sub> createState() => _Option_subState();
}

// ignore: camel_case_types
class _Option_subState extends State<Option_sub> {
  String dropdownValue = 'unit testing';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(11)),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(12),
      child: DropdownButton<String>(
        value: dropdownValue,
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: colors_light_theme.font_color_black),
        iconEnabledColor: colors_light_theme.font_color_black,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[
          'unit testing',
          'operating system',
          'compiler',
          'network managment ',
          'animation'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Container(
                padding: const EdgeInsets.all(11),
                child: Text(value, style: const TextStyle(fontFamily: 'hh'))),
          );
        }).toList(),
        borderRadius: BorderRadius.circular(11),
        isExpanded: true,
      ),
    );
  }
}
