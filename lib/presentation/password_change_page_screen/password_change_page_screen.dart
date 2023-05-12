import 'dart:convert';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'controller/password_change_page_controller.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/core/utils/validation_functions.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:facemarkapp/widgets/custom_button.dart';
import 'package:facemarkapp/widgets/custom_icon_button.dart';
import 'package:facemarkapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable// class PasswordChangePageScreen extends GetWidget<PasswordChangePageController> {
class PasswordChangePageScreen extends StatefulWidget {
  PasswordChangePageScreen({Key? key}) : super(key: key);

  @override
  _PasswordChangePageScreenState createState() =>
      _PasswordChangePageScreenState();
}

class _PasswordChangePageScreenState extends State<PasswordChangePageScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isNewPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> changePassword(String newPassword) async {
    if (_formKey.currentState!.validate()) {
      try {
        final apiUrl = Uri.parse(
            'http://192.168.93.142:8000/dj-rest-auth/password/change/');

        final response = await http.post(apiUrl,
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              'new_password1': newPassword,
              'new_password2': newPassword,
            }));
        if (response.statusCode == 200) {
          print('Password changed successfully');
          Get.offAll(() => ProfileSettingsPage());
        } else {
          throw Exception('Failed to change password');
        }
      } catch (e) {}
    }
  }

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
                      child: Form(
                          key: _formKey,
                          child: Container(
                              height: size.height,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage2,
                                        height: getVerticalSize(850),
                                        width: getHorizontalSize(400),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 5),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      margin:
                                                          getMargin(top: 45),
                                                      padding: getPadding(
                                                          left: 18, right: 18),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 39,
                                                                width: 39,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            2),
                                                                onTap: () {
                                                                  onTapBtnArrowleft();
                                                                },
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleftBlack90001)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top:
                                                                            48),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_profile".tr,
                                                                              style: TextStyle(color: ColorConstant.black90001, fontSize: getFontSize(30), fontFamily: 'Poppins', fontWeight: FontWeight.w700)),
                                                                          TextSpan(
                                                                              text: "lbl_settings".tr,
                                                                              style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(30), fontFamily: 'Poppins', fontWeight: FontWeight.w700))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 1,
                                                                        top:
                                                                            23),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.all(16),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            TextFormField(
                                                                              controller: _newPasswordController,
                                                                              obscureText: _isNewPasswordHidden,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'New Password',
                                                                                suffixIcon: IconButton(
                                                                                  icon: Icon(
                                                                                    _isNewPasswordHidden ? Icons.visibility_off : Icons.visibility,
                                                                                  ),
                                                                                  onPressed: () {
                                                                                    setState(() {
                                                                                      _isNewPasswordHidden = !_isNewPasswordHidden;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 16),
                                                                            TextFormField(
                                                                              controller: _confirmPasswordController,
                                                                              obscureText: _isConfirmPasswordHidden,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Confirm Password',
                                                                                suffixIcon: IconButton(
                                                                                  icon: Icon(
                                                                                    _isConfirmPasswordHidden ? Icons.visibility_off : Icons.visibility,
                                                                                  ),
                                                                                  onPressed: () {
                                                                                    setState(() {
                                                                                      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 16),
                                                                            ElevatedButton(
                                                                              onPressed: () {
                                                                                String newPassword = _newPasswordController.text.trim();
                                                                                String confirmPassword = _confirmPasswordController.text.trim();
                                                                                if (newPassword == confirmPassword) {
                                                                                  changePassword(newPassword);
                                                                                } else {
                                                                                  showDialog(
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Error'),
                                                                                        content: Text('Passwords do not match'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () {
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            child: Text('OK'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                              },
                                                                              child: Text('Change Password'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ])),
                                                          ])),
                                                  Spacer()
                                                ])))
                                  ]))),
                    )))));
  }

  onTapSavePassword() {
    Get.toNamed(AppRoutes.profileSettingsPage);
  }

  onTapBtnArrowleft() {
    Get.previousRoute;
  }
}
