import 'package:facemarkapp/presentation/attendance_page_screen/attendance_page_screen.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:facemarkapp/presentation/send_attendance_page_screen/send_attendance_page_screen.dart';
import 'controller/attendance_graph_page_controller.dart';
import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:facemarkapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class AttendanceGraphPageScreen
    extends GetWidget<AttendanceGraphPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.teal300,
        body: Container(
            height: size.height,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(top: 169),
                  // child: Obx(
                  //   () => Row(
                  //     children: [
                  //       CustomRadioButton(
                  //         text: "msg_classes_attended".tr,
                  //         iconSize: getHorizontalSize(14),
                  //         value: controller
                  //             .attendanceGraphPageModelObj.value.radioList[0],
                  //         groupValue: controller.radioGroup.value,
                  //         margin: getMargin(left: 36, top: 22, bottom: 268),
                  //         fontStyle: RadioFontStyle.NunitoSansRegular14,
                  //         onChange: (value) {
                  //           controller.radioGroup.value = value;
                  //         },
                  //       ),
                  //       CustomRadioButton(
                  //         text: "lbl_classes_missed".tr,
                  //         iconSize: getHorizontalSize(14),
                  //         value: controller
                  //             .attendanceGraphPageModelObj.value.radioList[1],
                  //         groupValue: controller.radioGroup.value,
                  //         margin: getMargin(
                  //             left: 44, top: 22, right: 37, bottom: 268),
                  //         fontStyle: RadioFontStyle.NunitoSansRegular14,
                  //         onChange: (value) {
                  //           controller.radioGroup.value = value;
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: size.height,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage2,
                            height: getVerticalSize(844),
                            width: getHorizontalSize(390),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding:
                                    getPadding(left: 18, top: 50, right: 19),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              svgPath: ImageConstant
                                                  .imgArrowleftBlack90001)),
                                      Padding(
                                        padding: getPadding(left: 1, top: 26),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_attendance".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black90001,
                                                      fontSize: getFontSize(30),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .indigo900,
                                                      fontSize: getFontSize(30),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))),
                                              TextSpan(
                                                  text: "lbl_graph".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(30),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28)))
                                            ]),
                                            textAlign: TextAlign.left),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                              left: 44, top: 60, right: 37),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomButton(
                                                height: getVerticalSize(24),
                                                width: getHorizontalSize(93),
                                                text: "lbl_branch".tr,
                                                variant: ButtonVariant
                                                    .OutlineWhiteA700,
                                                padding:
                                                    ButtonPadding.PaddingT4,
                                                fontStyle: ButtonFontStyle
                                                    .NunitoSansSemiBold12,
                                                suffixWidget: Container(
                                                  margin: getMargin(left: 15),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          strokeAlign:
                                                              strokeAlignCenter)),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown),
                                                ),
                                              ),
                                              CustomButton(
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(93),
                                                  text: "lbl_section".tr,
                                                  variant: ButtonVariant
                                                      .OutlineWhiteA700,
                                                  padding:
                                                      ButtonPadding.PaddingT4,
                                                  fontStyle: ButtonFontStyle
                                                      .NunitoSansSemiBold12,
                                                  suffixWidget: Container(
                                                      margin:
                                                          getMargin(left: 13),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1),
                                                              strokeAlign:
                                                                  strokeAlignCenter)),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown)))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 29, top: 14, right: 28),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_100".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtNunitoSansSemiBold11
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.18))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              16),
                                                                  child: Text(
                                                                      "lbl_75"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtNunitoSansSemiBold11
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.18)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              15),
                                                                  child: Text(
                                                                      "lbl_60"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtNunitoSansSemiBold11
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.18)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              15),
                                                                  child: Text(
                                                                      "lbl_50"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtNunitoSansSemiBold11
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.18)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              16),
                                                                  child: Text(
                                                                      "lbl_25"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtNunitoSansSemiBold11
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.18)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              16),
                                                                  child: Text(
                                                                      "lbl_0"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtNunitoSansSemiBold11
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.18))))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(
                                                            172),
                                                        width:
                                                            getHorizontalSize(
                                                                270),
                                                        margin: getMargin(
                                                            left: 5, bottom: 6),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup6,
                                                                  height:
                                                                      getVerticalSize(
                                                                          159),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          270),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(34),
                                                                            width: getHorizontalSize(58),
                                                                            margin: getMargin(right: 48),
                                                                            child: Stack(alignment: Alignment.topCenter, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgTelevision, height: getVerticalSize(34), width: getHorizontalSize(58), alignment: Alignment.center),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(top: 4), child: Text("lbl_752".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSansSemiBold12.copyWith(letterSpacing: getHorizontalSize(0.18)))))
                                                                            ])),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(134),
                                                                            width: getHorizontalSize(260),
                                                                            margin: getMargin(top: 4),
                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgPath3copy2, height: getVerticalSize(39), width: getHorizontalSize(260), alignment: Alignment.bottomCenter, margin: getMargin(bottom: 34)),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(127),
                                                                                      width: getHorizontalSize(260),
                                                                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup121), fit: BoxFit.cover)),
                                                                                      child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgPath3copy, height: getVerticalSize(75), width: getHorizontalSize(260), alignment: Alignment.topCenter),
                                                                                        Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 77), child: SizedBox(height: getVerticalSize(119), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.orangeA200))))
                                                                                      ]))),
                                                                              Align(alignment: Alignment.topRight, child: Container(height: getSize(12), width: getSize(12), margin: getMargin(right: 71), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(6)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2)))))
                                                                            ]))
                                                                      ]))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 52, top: 10, right: 29),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text("lbl_aiml".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoSansSemiBold11
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.18))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16),
                                                        child: Text(
                                                            "lbl_bda".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoSansSemiBold11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20),
                                                        child: Text(
                                                            "lbl_uid".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoSansSemiBold11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 21),
                                                        child: Text("lbl_nm".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoSansSemiBold11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 21),
                                                        child: Text(
                                                            "lbl_crypto".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoSansSemiBold11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18)))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20),
                                                        child: Text(
                                                            "lbl_aiml_lab".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoSansSemiBold11
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.18))))
                                                  ]))),
                                      ElevatedButton(
                                        onPressed: onTapSendattendance,
                                        child: Text(
                                          'Send Attendance',
                                          style: TextStyle(
                                            backgroundColor: Colors.black,
                                          ),
                                        ),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.black),
                                        ),
                                      ),
                                    ])))
                      ])))
            ])),
      ),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSendattendance() {
    try {
      Get.toNamed(AppRoutes.dashboardPageScreen);
    } catch (e) {
      print(e);
    }
  }
}
