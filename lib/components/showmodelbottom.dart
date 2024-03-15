// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:tolaby_app/components/settings.dart';
import 'package:tolaby_app/screens/otp_page.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// ignore: camel_case_types
class Show_bottom_sheet extends StatefulWidget {
  const Show_bottom_sheet({super.key});

  @override
  State<Show_bottom_sheet> createState() => _Show_bottom_sheetState();
}

// ignore: camel_case_types
class _Show_bottom_sheetState extends State<Show_bottom_sheet> {
  var strqr = "hello";
  Future<void> scanqr() async {
    try {
      await FlutterBarcodeScanner.scanBarcode(
              "#ff6666", "cancel", false, ScanMode.QR)
          .then((value) {
        setState(() {
          value = strqr;
        });
      });
    } catch (e) {
      setState(() {
        strqr = "error";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("New attendace",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.account_box,
                  size: 30,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  scanqr();
                },
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      // color: Color(0XFF2661FA),
                      color: const Color.fromARGB(255, 79, 222, 153),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Stack(
                    children: [
                      Positioned(
                          bottom: 15,
                          left: 10,
                          child: Text(
                            "Scan QR Code",
                            style: TextStyle(
                                fontSize: 20,
                                color: colors_light_theme.color_white,
                                fontFamily: "hh"),
                          )),
                      Positioned(
                        top: 5,
                        right: 10,
                        child: Icon(
                          Icons.qr_code,
                          color: colors_light_theme.color_white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Otp_page()));

                
                },
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color(0XFF2661FA),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Stack(
                    children: [
                      Positioned(
                          bottom: 15,
                          left: 10,
                          child: Text(
                            "OTP Code",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: "hh",
                                color: Colors.white),
                          )),
                      Positioned(
                          top: 5,
                          right: 10,
                          child: Icon(
                            Icons.password_sharp,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
