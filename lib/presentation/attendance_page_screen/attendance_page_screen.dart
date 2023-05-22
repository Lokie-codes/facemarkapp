import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:facemarkapp/presentation/attendance_graph_page_screen/attendance_graph_page_screen.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/manual_update_page/manual_update_page.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:ui';
import 'package:http/http.dart' as http;

class AttendancePageScreen extends StatefulWidget {
  late String branch;
  late String section;
  late String subject;
  late DateTime date;
  List<String> usns = [];

  AttendancePageScreen({
    required this.branch,
    required this.section,
    required this.subject,
    required this.date,
    required this.usns,
  });

  static get usnList => null;

  @override
  _AttendancePageScreenState createState() => _AttendancePageScreenState();
}

class _AttendancePageScreenState extends State<AttendancePageScreen> {
  List<String> usns = [];

  @override
  void initState() {
    super.initState();
    usns = widget.usns;
  }

  @override
  Widget build(BuildContext context) {
    final branch = widget.branch;
    final section = widget.section;
    final subject = widget.subject;
    final date = widget.date;

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.teal300,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 92),
                decoration: BoxDecoration(
                    color: ColorConstant.teal300,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgImage2),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 15, top: 2, right: 15, bottom: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 39,
                          width: 39,
                          margin: getMargin(left: 5, top: 48),
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack90001)),
                      Padding(
                          padding: getPadding(left: 4, top: 8),
                          child: Text("lbl_attendance".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold30)),
                      Text('Branch: $branch'),
                      Text('Section: $section'),
                      Text('Subject: $subject'),
                      Text('Date: ${date.toString()}'),
                      Center(
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('USN')),
                            DataColumn(label: Text('Status')),
                          ],
                          rows: usns
                              .map((usn) => DataRow(cells: [
                                    DataCell(Text(usn)),
                                    DataCell(Icon(Icons.check_circle)),
                                  ]))
                              .toList(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {
                            sendAttendance(
                                usns, branch, section, subject, date);
                            onTapSave();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                              backgroundColor: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(top: 14),
                          padding:
                              getPadding(left: 2, top: 2, right: 2, bottom: 2),
                          decoration: AppDecoration.fillTeal300ce.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_add_more_students".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold32WhiteA700),
                              Container(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(getVerticalSize(56),
                                        getHorizontalSize(50)),
                                    // padding: getPadding(left: 50,right: 50),
                                    primary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                  onPressed: () async {
                                    // Request camera permission
                                    if (await Permission.camera
                                        .request()
                                        .isGranted) {
                                      // Navigate to camera screen
                                      final image = await ImagePicker()
                                          .pickImage(
                                              source: ImageSource.camera);
                                      // Add code to process the captured image
                                    } else {
                                      // Display error message if camera permission is not granted
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Camera permission is required'),
                                          duration: Duration(seconds: 3),
                                        ),
                                      );
                                    }
                                  },
                                  child: Text(
                                    "lbl_camera".tr,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                width: getVerticalSize(400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ManualUpdatePage(),
                                    ),
                                  );
                                },
                                child: CustomButton(
                                  height: getVerticalSize(56),
                                  text: "lbl_manually".tr,
                                  margin: getMargin(top: 5, bottom: 5),
                                  fontStyle: ButtonFontStyle.InterSemiBold20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnArrowleft() {
    Get.offAll(Homepage());
  }

  onTapSave() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AttendanceGraphPageScreen(),
        ));
  }

  Future<void> sendAttendance(List<String> usns, String branch, String section,
      String subject, DateTime date) async {
    DateTime dateFormatted = DateFormat('yyyy-MM-dd').parse(date.toString());
    final apiUrl = Uri.parse('http://192.168.93.142:8000/api/attendance/');
    print("Student $usns $branch $section $subject $date");
    for (var usn in usns) {
      try {
        final response = await http.post(
          apiUrl,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, dynamic>{
            'student': usn,
            'branch': branch,
            'section': section,
            'subject': subject,
            // 'date': dateFormatted.toIso8601String(),
            // 'status': true,
          }),
        );
        print(response.body);
      } catch (e) {
        print(e);
      }
    }
  }
}
