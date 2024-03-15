import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 211,
                color: colors_light_theme.primary_color,

                // Replace with your desired background color
              ),
              Center(
                // heightFactor: 2.7,

                child: Container(
                  margin: EdgeInsets.only(top: 145),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: CircleAvatar(
                    radius: 80, // Adjust the size as needed
                    backgroundImage: AssetImage(
                        'assets/images/aatik-tasneem.jpg'), // Replace with your image path
                  ),
                ),
              ),
              Positioned(
                right: 125,
                top: 260,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.grey,
                      size: 30,
                    )),
              ),
              Positioned(
                  top: 40,
                  right: 10,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.logout_outlined,size: 30,color: Colors.white,)))
            ],
          ),
          Text("Hesham Mohamed Ahmed",
              style: TextStyle(fontFamily: "hh", fontSize: 22)),
          SizedBox(
            height: 11,
          ),
          Text("4th year in faculty computer and inforamtion ",
              style: TextStyle(fontFamily: "hh", fontSize: 13)),
          SizedBox(
            height: 33,
          ),
          Container(
            padding: EdgeInsets.all(15),
            color: colors_light_theme.primary_color,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "content",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Identity",
                    style: TextStyle(fontFamily: "hh", fontSize: 22)),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Student Data",
                  style: TextStyle(fontFamily: "hh", fontSize: 22),
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
