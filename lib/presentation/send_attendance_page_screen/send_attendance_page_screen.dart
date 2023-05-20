import 'package:facemarkapp/presentation/attendance_graph_page_screen/attendance_graph_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_page_screen/attendance_page_screen.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';
import 'controller/send_attendance_page_controller.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/app_bar/appbar_image.dart';
import 'package:facemarkapp/widgets/app_bar/custom_app_bar.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_drop_down.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SendAttendancePageScreen extends StatefulWidget {
  SendAttendancePageScreen({Key? key}) : super(key: key);

  @override
  _SendAttendancePageScreenState createState() =>
      _SendAttendancePageScreenState();
}

class _SendAttendancePageScreenState extends State<SendAttendancePageScreen> {
  late Future<List<dynamic>> futureAttendance;

  Future<List<dynamic>> fetchAttendance() async {
    final response =
        await http.get(Uri.parse('http://192.168.93.142:8000/api/attendance/'));
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      List<dynamic> data = json.decode(response.body);
      return data;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load attendance');
    }
  }

  Future<void> sendAttendance() async {
    print("Hitting attendance point");
    final response = await http.post(
      Uri.parse('http://192.168.93.142:8000/api/send_mail/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'key': 'value',
      }),
    );
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Attendance sent successfully'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to send attendance');
    }
  }

  @override
  void initState() {
    super.initState();
    futureAttendance = fetchAttendance();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.teal300,
      body: Container(
        height: size.height,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomIconButton(
              height: 39,
              width: 39,
              margin: getMargin(left: 20, top: 50),
              alignment: Alignment.topLeft,
              onTap: onTapBtnArrowleft,
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowleftBlack90001,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: getVerticalSize(844),
                      width: getHorizontalSize(390),
                      alignment: Alignment.center,
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: getPadding(left: 19, top: 49, right: 17),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                    height: getVerticalSize(98),
                                    title: Padding(
                                      padding: getPadding(left: 19, top: 50),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_face".tr,
                                              style: TextStyle(
                                                color: ColorConstant.black90001,
                                                fontSize: getFontSize(32),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "lbl_mark".tr,
                                              // text: "This widget",
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(32),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              style: TextStyle(
                                                color: ColorConstant.black90001,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    actions: [
                                      AppbarImage(
                                        height: getVerticalSize(96),
                                        width: getHorizontalSize(92),
                                        imagePath: ImageConstant.imgImage1,
                                        margin: getMargin(
                                            left: 25, right: 25, bottom: 2),
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          ElevatedButton(
                                            onPressed: () {
                                              sendAttendance();
                                            },
                                            child: Text('Attendance'),
                                          ),
                                          FutureBuilder<List<dynamic>>(
                                            future: futureAttendance,
                                            builder: (context, snapshot) {
                                              if (snapshot.hasData) {
                                                return Expanded(
                                                  child: ListView.builder(
                                                    itemCount:
                                                        snapshot.data!.length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return ListTile(
                                                        title: Text(snapshot
                                                                .data![index]
                                                            ['name']),
                                                        subtitle: Text(snapshot
                                                                .data![index]
                                                            ['status']),
                                                      );
                                                    },
                                                  ),
                                                );
                                              } else if (snapshot.hasError) {
                                                return Text(
                                                    "${snapshot.error}");
                                              }
                                              // By default, show a loading spinner.
                                              return CircularProgressIndicator();
                                            },
                                          )
                                        ]),
                                  )
                                ])))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    ));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Volume:
        return AppRoutes.homePage;
      case BottomBarEnum.History:
        return AppRoutes.attendanceGraphPageScreen;
      case BottomBarEnum.Grid:
        return AppRoutes.dashboardPageScreen;
      case BottomBarEnum.Computer:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return Homepage();
      case AppRoutes.attendanceGraphPageScreen:
        return AttendanceGraphPageScreen();
      case AppRoutes.dashboardPageScreen:
        return DashboardPageScreen();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
