import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Otp_page extends StatelessWidget {
  const Otp_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        // height: 340,
        // width: 150,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 22,),
              Image.asset(
                "assets/images/verify.png",
                height: 200,
              ),
              SizedBox(
                height: 32,
              ),
              Text("OTP Verification",style: TextStyle(fontFamily: "hh",fontSize: 22),),
              SizedBox(
                height: 32,
              ),
              OtpTextField(
                // clearText: true,
                borderColor: Colors.black,
                borderWidth: 2,
                showFieldAsBox: true,
                // fillColor:colors_light_theme.primary_color,
                focusedBorderColor: Colors.black,
                borderRadius: BorderRadius.circular(12),
                numberOfFields: 6,
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 135,vertical: 12))),
                  onPressed: () {},
                  child: Text("Verify",style: TextStyle(fontFamily: "hh",fontSize: 17),))
                  ,
                   
            ],
          ),
        ),
      ),
    );
  }
}
