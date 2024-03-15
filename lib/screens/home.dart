 
import 'package:flutter/material.dart';
 
import 'package:tolaby_app/components/latest_news.dart';
 
import 'package:tolaby_app/components/trend_news.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                  begin: Alignment.topRight,
              end: Alignment.bottomRight,
              transform: const GradientRotation(55),
              colors: [
                  Colors.white,
                Theme.of(context).primaryColor
              
              ],
            ),
          ),
          child: ListView(
          
            children: [
              const SizedBox(
                height: 20,
              ),
              

              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "News ",
                  style: Theme.of(context).textTheme.titleLarge
                ),
              ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: const BoxDecoration(
                        color: colors_light_theme.color_white, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon:   Icon(
                          Icons.settings,
                            color:Theme.of(context).primaryColor,
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                  margin: const EdgeInsets.all(11),
                  // padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: colors_light_theme.color_white),
                  child: const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(11),
                      border: InputBorder.none,
                      hintText: 'Enter text',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.search)
                    ),
                  )),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Trending News ",
                  style: Theme.of(context).textTheme.titleLarge
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return const Trend_news();
                    }),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Latest News ",
                  style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index) {
                      return const Latest_news();
                    }),
              )
            ],
          ),
        ));
  }
}
