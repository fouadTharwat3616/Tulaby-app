 
import 'package:flutter/material.dart';
 
import 'package:tolaby_app/components/option_subjects.dart';
import 'package:tolaby_app/components/showmodelbottom.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';
import 'package:tolaby_app/screens/report_attendance.dart';
// import 'package:tolaby_app/screens/scan_page.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomRight,
          //   transform: const GradientRotation(55),
          //   colors: [
          //     Colors.white,
          //     Theme.of(context).primaryColor
          //     // Colors.indigo.shade100,
          //     // Color.fromRGBO(38, 22, 250, 1),
          //     //          Color.fromRGBO(38, 97, 250, 200),
          //     // Color.fromRGBO(226, 240, 249, 1),
          //     // Color.fromARGB(255, 174, 194, 255),
          //     // Color.fromARGB(255, 155, 178, 248),
          //     // Color.fromARGB(255, 255, 255, 255),
          //   ],
          // ),
        ),
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Attendace ",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                
                margin: const EdgeInsets.symmetric(horizontal: 12),
              
                child: IconButton(
                    onPressed: () {
                      
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Theme.of(context).primaryColor,
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            child: Text(
              " Select Subject ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Option_sub(),
          const SizedBox(
            height: 22,
          ),
          Container(
            padding: const EdgeInsets.all(6),
            child: Text(
              " Lec OR Lab ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Option_sub(),
          const SizedBox(
            height: 22,
          ),
          // Container(
          //   margin: EdgeInsets.all(12),
          //   padding: EdgeInsets.all(6),
          //   decoration: BoxDecoration(
          //       border: Border.all(width: 1),
          //       borderRadius: BorderRadius.circular(12)),
          //   child: TextField(
          //     decoration: InputDecoration(

          //         hintText: "Enter your name ",
          //         floatingLabelAlignment: FloatingLabelAlignment.start,
          //         suffixIcon: Icon(Icons.person),
          //         enabledBorder: InputBorder.none,
          //         focusedBorder:
          //             UnderlineInputBorder(borderSide: BorderSide.none),
          //         contentPadding: EdgeInsets.all(12)),
          //   ),
          // ),
          const SizedBox(
            height: 77,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // margin: const EdgeInsets.symmetric(horizontal: 99),
                child: ElevatedButton.icon(
                    onPressed: () {
                      showModalBottomSheet(
                          // useSafeArea: false,
                          //  isScrollControlled: true,
                          enableDrag: false,
                          showDragHandle: true,
                          useRootNavigator: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22),
                                  topRight: Radius.circular(22))),
                          context: context,
                          builder: (BuildContext context) {
                            return const Show_bottom_sheet();
                          });
                    },
                    label: const Text(
                      "Submit",
                      style: TextStyle(fontFamily: 'hh'),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    style: ButtonStyle(
                        textStyle: const MaterialStatePropertyAll(
                            TextStyle(fontSize: 24)),
                        iconSize: const MaterialStatePropertyAll(28),
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).primaryColor),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 33, vertical: 13)))),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 Report_attendance()));
                  },
                  style: ButtonStyle(
                      textStyle: const MaterialStatePropertyAll(
                          TextStyle(fontSize: 22)),
                      backgroundColor: const MaterialStatePropertyAll(
                          colors_light_theme.color_white),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          side: const BorderSide(),
                          borderRadius: BorderRadius.circular(12))),
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.all(14))),
                  child: Text("Show Reports",
                      style: Theme.of(context).textTheme.titleMedium)),
            ],
          )
        ]),
      ),
    );
  }
}
