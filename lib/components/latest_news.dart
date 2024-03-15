import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

// ignore: camel_case_types
class Latest_news extends StatelessWidget {
  const Latest_news({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 130,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colors_light_theme.color_white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 0,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 130,
                      width: 160,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/aatik-tasneem.jpg",
                              ),
                              fit: BoxFit.fill)),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color:Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  "16,feb 2024",
                                  style: Theme.of(context).textTheme.titleSmall
                                )),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Text("instagram is social media app",
                                        style: Theme.of(context).textTheme.titleMedium
                                        ),
                        ),
                  const SizedBox(height: 15,),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: const EdgeInsets.only(left: 7,),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey
                            ),
                            child: const Text("Aother",style: TextStyle(color: colors_light_theme.color_white),))),
                    
                      ],
                    )),
                    
                  ],
                ),
              ),
    );
  }
}