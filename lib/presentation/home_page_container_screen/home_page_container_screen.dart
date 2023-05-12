import 'package:facemarkapp/presentation/attendance_graph_page_screen/attendance_graph_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_page_screen/attendance_page_screen.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:facemarkapp/presentation/image_preview_page/image_preview_page.dart';
import 'controller/home_page_container_controller.dart';
import 'package:facemarkapp/core/app_export.dart';
import 'package:facemarkapp/presentation/home_page/home_page.dart';
import 'package:facemarkapp/presentation/manual_update_page/manual_update_page.dart';
import 'package:facemarkapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:facemarkapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal300,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
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
}
