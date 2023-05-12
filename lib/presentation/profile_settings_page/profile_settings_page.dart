import 'controller/profile_settings_controller.dart';
import 'models/profile_settings_model.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:facemarkapp/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:facemarkapp/presentation/password_change_page_screen/password_change_page_screen.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatelessWidget {
  ProfileSettingsController controller =
      Get.put(ProfileSettingsController(ProfileSettingsModel().obs));

  onTapSignOut() async {
    try {
      final response = await http
          .post(Uri.parse('http://192.168.93.142:8000/dj-rest-auth/logout/'));
      if (response.statusCode == 200) {
        Get.offNamed(AppRoutes.signInPageScreen);
      } else {
        // Handle error, show a toast message or an error dialog
      }
    } catch (e) {
      // Handle error, show a toast message or an error dialog
    }
  }

  void onTapChangePassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordChangePageScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                      height: getVerticalSize(752),
                      width: double.maxFinite,
                      decoration: AppDecoration.fillTeal300,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage2,
                            height: getVerticalSize(850),
                            width: getHorizontalSize(400),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: getMargin(top: 45),
                                    padding: getPadding(left: 17, right: 17),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                          height: 39,
                                          width: 39,
                                          margin: getMargin(left: 3),
                                          onTap: () {
                                            onTapBtnArrowleft();
                                          },
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftBlack90001,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(left: 2, top: 48),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "lbl_profile".tr,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .black90001,
                                                    fontSize: getFontSize(30),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "lbl_settings".tr,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(30),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        CustomButton(
                                          height: getVerticalSize(56),
                                          text: "Change Password",
                                          margin: getMargin(
                                              left: 1, top: 54, bottom: 40),
                                          fontStyle:
                                              ButtonFontStyle.InterSemiBold16,
                                          onTap: () =>
                                              onTapChangePassword(context),
                                        ),
                                        CustomButton(
                                          height: getVerticalSize(56),
                                          text: "lbl_sign_out".tr,
                                          margin: getMargin(left: 3, top: 56),
                                          onTap: onTapSignOut,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
