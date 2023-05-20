// import '../send_attendance_page_screen/send_attendance_page_screen.dart';
import 'package:facemarkapp/presentation/manual_update_page/manual_update_page.dart';

import 'controller/dashboard_page_controller.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:facemarkapp/widgets/app_bar/appbar_image.dart';
import 'package:facemarkapp/widgets/app_bar/custom_app_bar.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'send_attendance.dart';

class DashboardPageScreen extends GetWidget<DashboardPageController> {
  static const IconData arrow_right =
      IconData(0xe09e, fontFamily: 'MaterialIcons', matchTextDirection: true);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.teal300,
            body: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width,
                      minHeight: MediaQuery.of(context).size.height,
                    ),
                    child: IntrinsicHeight(
                        child: Stack(
                            //alignment: Alignment.bottomCenter,
                            children: [
                          Container(
                              margin: getMargin(top: 25),
                              padding: getPadding(left: 18, right: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 39,
                                        width: 39,
                                        margin: getMargin(left: 2),
                                        onTap: () {
                                          onTapBtnArrowleft();
                                        },
                                        child: CustomImageView(
                                          child: arrow_right,
                                        )),
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: getVerticalSize(850),
                              width: getHorizontalSize(400),
                              alignment: Alignment.center),
                          Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                  height: getVerticalSize(142),
                                  title: Padding(
                                    padding: getPadding(
                                      left: 23,
                                      top: 60,
                                    ),
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
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(32),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // textAlign: TextAlign.left,
                                    ),
                                  ),
                                  actions: [
                                    AppbarImage(
                                      height: getVerticalSize(96),
                                      width: getHorizontalSize(92),
                                      imagePath: ImageConstant.imgImage1,
                                      margin: getMargin(
                                        left: 25,
                                        right: 25,
                                        bottom: 2,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                padding: getPadding(
                                                    left: 12,
                                                    right: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ManualUpdatePage()));
                                                  },
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgUserBlack90002,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 25,
                                                                bottom: 19)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                bottom: 1),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "msg_update_attendance"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular16
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.5))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              5),
                                                                      child: Text(
                                                                          "msg_change_student_attendance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterRegular14Black90094
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                ])),
                                                        Spacer(),
                                                      ]),
                                                )),
                                            Container(
                                                padding: getPadding(
                                                    left: 12,
                                                    right: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                // decoration:
                                                // AppDecoration.outlineGray200,
                                                child: OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                SendAttendance()));
                                                  },
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage522x25,
                                                            height:
                                                                getVerticalSize(
                                                                    22),
                                                            width:
                                                                getHorizontalSize(
                                                                    25),
                                                            margin: getMargin(
                                                                top: 22,
                                                                bottom: 22)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                right: 12,
                                                                top: 12,
                                                                bottom: 12),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                      "msg_send_attendance"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular16
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.5))),
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          184),
                                                                      margin: getMargin(
                                                                          top:
                                                                              3),
                                                                      child: Text(
                                                                          "msg_send_attendance2"
                                                                              .tr,
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterRegular14Black900941
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                ])),
                                                        Spacer(),
                                                      ]),
                                                ))
                                          ])),
                                )
                              ])
                        ]))))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
