import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:tolaby_app/constant/colors/light_theme_color.dart';

class Report_attendance extends StatefulWidget {
  Report_attendance({super.key});

  @override
  State<Report_attendance> createState() => _Report_attendanceState();
}

// ignore: camel_case_types
class _Report_attendanceState extends State<Report_attendance> {
  // ignore: non_constant_identifier_names
  bool is_show = false;

  Map<String, double> dataMap = {
    "Absent": 30,
    "Attend": 70,
  };

  List<Color> gradientList = [
    Colors.deepOrange,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text("Reports",
              style: TextStyle(
                  fontSize: 26, color: colors_light_theme.color_white)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  size: 30,
                  Icons.settings,
                  color: colors_light_theme.color_white,
                )),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topRight,
              //     end: Alignment.bottomRight,
              //     transform: GradientRotation(55),
              //   colors:  [
              //       Colors.white,
              //       Theme.of(context).primaryColor
              //     // Color.fromRGBO(226, 240, 249, 1),
              //     // Color.fromARGB(255, 174, 194, 255),
              //     // Color.fromARGB(255, 155, 178, 248),
              //     // Color.fromARGB(255, 255, 255, 255),
              //   ],
              // ),
              ),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 40,
              ),
              PieChart(
                dataMap: dataMap,
                colorList: gradientList,
                animationDuration: const Duration(milliseconds: 800),
                chartLegendSpacing: 22,
                chartRadius: MediaQuery.of(context).size.width / 1.8,
                legendOptions: const LegendOptions(
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 0,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 77),
                child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        is_show = !is_show;
                      });
                    },
                    label: const Text(
                      "Show Details",
                      style: TextStyle(
                          fontFamily: 'hh',
                          color: colors_light_theme.color_white),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    style: ButtonStyle(
                        textStyle: const MaterialStatePropertyAll(
                            TextStyle(fontSize: 22)),
                        iconSize: const MaterialStatePropertyAll(28),
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).primaryColor),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.all(10)))),
              ),
              const SizedBox(
                height: 40,
              ),
              is_show
                  ? Container(
                      margin: const EdgeInsets.all(7),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1)),
                              child: DataTable(
                                columns: const [
                                  DataColumn(
                                      label: Text(
                                    'Column 1',
                                    style: TextStyle(
                                        color:colors_light_theme.font_color_black, fontSize: 17),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Column 2',
                                    style: TextStyle(
                                        color:colors_light_theme.font_color_black, fontSize: 17),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Column 3',
                                    style: TextStyle(
                                        color:colors_light_theme.font_color_black, fontSize: 17),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Column 4',
                                    style: TextStyle(
                                        color: colors_light_theme.font_color_black, fontSize: 17),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Column 5',
                                    style: TextStyle(
                                        color:colors_light_theme.font_color_black, fontSize: 17),
                                  )),
                                ],
                                rows: const [
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 1',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 2',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 2',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 2',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 2',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 3',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 4',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 4',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 4',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 4',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 5',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 5',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 5',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Data 5',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                    DataCell(Text(
                                      'Data 6',
                                      style: TextStyle(
                                          color:colors_light_theme.font_color_black,
                                          fontSize: 15,
                                          fontFamily: 'hh'),
                                    )),
                                  ]),
                                ],
                              ),
                            )),
                      ),
                    )
                  : const Text(""),
              const SizedBox(
                height: 44,
              ),
            ],
          ),
        ));
  }
}
