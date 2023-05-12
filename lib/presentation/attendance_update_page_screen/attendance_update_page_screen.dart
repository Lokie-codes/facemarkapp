import 'package:facemarkapp/presentation/attendance_graph_page_screen/attendance_graph_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_page_screen/attendance_page_screen.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';

import 'controller/attendance_update_page_controller.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
//import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';
import 'package:facemarkapp/presentation/manual_update_page/manual_update_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_drop_down.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AttendanceUpdatePageScreen
    extends GetWidget<AttendanceUpdatePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillTeal300,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage2839x389,
                      height: getVerticalSize(839),
                      width: getHorizontalSize(389),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 19, top: 50, right: 18),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 39,
                                    width: 39,
                                    margin: getMargin(left: 1),
                                    onTap: () {
                                      onTapBtnArrowleft();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftBlack90001)),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_attendance".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.black90001,
                                                  fontSize: getFontSize(30),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing:
                                                      getHorizontalSize(0.28))),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.indigo900,
                                                  fontSize: getFontSize(30),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing:
                                                      getHorizontalSize(0.28))),
                                          TextSpan(
                                              text: "lbl_update".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(30),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing:
                                                      getHorizontalSize(0.28)))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 11, right: 43),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "lbl_attendance"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .black90001,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700)),
                                                          TextSpan(
                                                              text: " ",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700)),
                                                          TextSpan(
                                                              text: "lbl_of".tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .black90001,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text(
                                                            "lbl_student".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsBold16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.35))))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_select_usn".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsBold14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.5))),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                59),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 8),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_usn".tr,
                                                        margin:
                                                            getMargin(top: 4),
                                                        variant: DropDownVariant
                                                            .None,
                                                        fontStyle:
                                                            DropDownFontStyle
                                                                .PoppinsBold16,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList,
                                                        onPressed: (value) {
                                                          controller.onSelected(
                                                              value);
                                                        })
                                                  ]))
                                        ])),
                                Container(
                                    height: getVerticalSize(261),
                                    width: getHorizontalSize(335),
                                    margin: getMargin(left: 8, top: 12),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(31),
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        text: "lbl_present".tr,
                                                        variant: ButtonVariant
                                                            .FillBluegray700,
                                                        shape:
                                                            ButtonShape.Square,
                                                        padding: ButtonPadding
                                                            .PaddingAll5,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .PoppinsBlack13),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 10,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_yes".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList1,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected1(
                                                                  value);
                                                        }),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 13,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_no".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList2,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected2(
                                                                  value);
                                                        }),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 10,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_yes".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList3,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected3(
                                                                  value);
                                                        }),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 10,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_yes".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList4,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected4(
                                                                  value);
                                                        }),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 13,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_no".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList5,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected5(
                                                                  value);
                                                        }),
                                                    CustomDropDown(
                                                        width:
                                                            getHorizontalSize(
                                                                97),
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                            margin: getMargin(
                                                                left: 13,
                                                                right: 4),
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdownBlack90001)),
                                                        hintText: "lbl_no".tr,
                                                        items: controller
                                                            .attendanceUpdatePageModelObj
                                                            .value
                                                            .dropdownItemList6,
                                                        onPressed: (value) {
                                                          controller
                                                              .onSelected6(
                                                                  value);
                                                        })
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                93),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 5,
                                                            right: 8,
                                                            bottom: 5),
                                                        decoration: AppDecoration
                                                            .txtFillBluegray700,
                                                        child: Text(
                                                            "lbl_subject".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsBlack13)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                93),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 12,
                                                            right: 8,
                                                            bottom: 12),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text(
                                                            "lbl_aiml".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                93),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 9,
                                                            right: 8,
                                                            bottom: 9),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text(
                                                            "lbl_bda".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                94),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 11,
                                                            right: 8,
                                                            bottom: 11),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text(
                                                            "lbl_uid".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                93),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 9,
                                                            right: 8,
                                                            bottom: 9),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text("lbl_nm".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                94),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 10,
                                                            right: 8,
                                                            bottom: 10),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text(
                                                            "lbl_crypto".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                93),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 9,
                                                            right: 8,
                                                            bottom: 9),
                                                        decoration: AppDecoration
                                                            .txtFillWhiteA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder1),
                                                        child: Text(
                                                            "lbl_aiml_lab".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular15))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(261),
                                                  width: getHorizontalSize(150),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            1),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            35,
                                                                        top: 9,
                                                                        right:
                                                                            35,
                                                                        bottom:
                                                                            9),
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillWhiteA700,
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(left: 8),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date".tr,
                                                                          variant: DropDownVariant.None,
                                                                          fontStyle: DropDownFontStyle.InterRegular15Black90001,
                                                                          items: controller.attendanceUpdatePageModelObj.value.dropdownItemList7,
                                                                          onPressed: (value) {
                                                                            controller.onSelected7(value);
                                                                          }),
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      8),
                                                                              child: CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  19),
                                                                          variant: DropDownVariant
                                                                              .None,
                                                                          fontStyle: DropDownFontStyle
                                                                              .InterRegular15Black90001,
                                                                          items: controller
                                                                              .attendanceUpdatePageModelObj
                                                                              .value
                                                                              .dropdownItemList8,
                                                                          onPressed:
                                                                              (value) {
                                                                            controller.onSelected8(value);
                                                                          }),
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      8),
                                                                              child: CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  19),
                                                                          variant: DropDownVariant
                                                                              .None,
                                                                          fontStyle: DropDownFontStyle
                                                                              .InterRegular15Black90001,
                                                                          items: controller
                                                                              .attendanceUpdatePageModelObj
                                                                              .value
                                                                              .dropdownItemList9,
                                                                          onPressed:
                                                                              (value) {
                                                                            controller.onSelected9(value);
                                                                          }),
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      8),
                                                                              child: CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  19),
                                                                          variant: DropDownVariant
                                                                              .None,
                                                                          fontStyle: DropDownFontStyle
                                                                              .InterRegular15Black90001,
                                                                          items: controller
                                                                              .attendanceUpdatePageModelObj
                                                                              .value
                                                                              .dropdownItemList10,
                                                                          onPressed:
                                                                              (value) {
                                                                            controller.onSelected10(value);
                                                                          }),
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      8),
                                                                              child: CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  18),
                                                                          variant: DropDownVariant
                                                                              .None,
                                                                          fontStyle: DropDownFontStyle
                                                                              .InterRegular15Black90001,
                                                                          items: controller
                                                                              .attendanceUpdatePageModelObj
                                                                              .value
                                                                              .dropdownItemList11,
                                                                          onPressed:
                                                                              (value) {
                                                                            controller.onSelected11(value);
                                                                          }),
                                                                      CustomDropDown(
                                                                          width: getHorizontalSize(
                                                                              74),
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          icon: Container(
                                                                              margin: getMargin(
                                                                                  left:
                                                                                      8),
                                                                              child: CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgArrowdownBlack90001)),
                                                                          hintText: "lbl_date"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  19),
                                                                          variant: DropDownVariant
                                                                              .None,
                                                                          fontStyle: DropDownFontStyle
                                                                              .InterRegular15Black90001,
                                                                          items: controller
                                                                              .attendanceUpdatePageModelObj
                                                                              .value
                                                                              .dropdownItemList12,
                                                                          onPressed:
                                                                              (value) {
                                                                            controller.onSelected12(value);
                                                                          })
                                                                    ]))),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    31),
                                                            width:
                                                                getHorizontalSize(
                                                                    147),
                                                            text:
                                                                "lbl_date2".tr,
                                                            variant: ButtonVariant
                                                                .FillBluegray700,
                                                            shape: ButtonShape
                                                                .Square,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll5,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .PoppinsBlack13,
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ])))
                                        ])),
                                ElevatedButton(
                                  onPressed: onTapSendAttendance,
                                  child: Text(
                                    'lbl_send_attendance',
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
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
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

  onTapSave() {
    Get.toNamed(AppRoutes.attendanceGraphPageScreen);
  }
}

onTapSendAttendance() {
  Get.toNamed(AppRoutes.sendAttendancePageScreen);
}
