import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Trend_news extends StatelessWidget {
  const Trend_news({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.height / 2.6,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/aatik-tasneem.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            left: 12,
            bottom: 12,
            right: 12,
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    boxShadow: List.filled(
                        1, const BoxShadow(color: Color.fromARGB(50, 255, 255, 255))),
                    // color: Color.fromARGB(95, 255, 255, 255),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22))),
                child: const Text(
                  "the date of midterm will be after 2 month",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )))
      ],
    );
  }
}
