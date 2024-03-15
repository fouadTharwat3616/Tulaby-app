import 'package:flutter/material.dart';
import 'package:tolaby_app/components/background.dart';
import 'package:tolaby_app/components/navbar_persistant.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';
 

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.centerLeft,
            child:   Text(
              "LOGIN",
              style: TextStyle(
                  fontFamily: 'hh',
                  fontWeight: FontWeight.bold,
                  color:Theme.of(context).primaryColor,
                  fontSize: 34),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: "Username",
                  suffixIcon: Icon(Icons.person),
                  labelStyle: TextStyle(fontSize: 16,fontFamily: "hh")),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                  labelStyle: TextStyle(fontSize: 16,fontFamily: "hh")),
              obscureText: true,
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child:   Text(
              "Forgot your password?",
              style: TextStyle(fontSize: 15,   color:Theme.of(context).primaryColor,fontFamily: "hh"),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(44))),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(0))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Nav_bar()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: const LinearGradient(colors: [
                      colors_light_theme.color1_eleveted_btn,
                      colors_light_theme.color2_eleveted_btn,
                    ])),
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hh',  color:colors_light_theme.color_white),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
