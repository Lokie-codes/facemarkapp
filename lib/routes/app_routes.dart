import 'package:facemarkapp/presentation/splash_page_screen/splash_page_screen.dart';
import 'package:facemarkapp/presentation/splash_page_screen/binding/splash_page_binding.dart';
import 'package:facemarkapp/presentation/sign_in_page_screen/sign_in_page_screen.dart';
import 'package:facemarkapp/presentation/sign_in_page_screen/binding/sign_in_page_binding.dart';
import 'package:facemarkapp/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:facemarkapp/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:facemarkapp/presentation/attendance_page_screen/attendance_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_page_screen/binding/attendance_page_binding.dart';
import 'package:facemarkapp/presentation/attendance_graph_page_screen/attendance_graph_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_graph_page_screen/binding/attendance_graph_page_binding.dart';
import 'package:facemarkapp/presentation/password_change_page_screen/password_change_page_screen.dart';
import 'package:facemarkapp/presentation/password_change_page_screen/binding/password_change_page_binding.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/dashboard_page_screen.dart';
import 'package:facemarkapp/presentation/dashboard_page_screen/binding/dashboard_page_binding.dart';
import 'package:facemarkapp/presentation/send_attendance_page_screen/send_attendance_page_screen.dart';
import 'package:facemarkapp/presentation/send_attendance_page_screen/binding/send_attendance_page_binding.dart';
import 'package:facemarkapp/presentation/attendance_update_page_screen/attendance_update_page_screen.dart';
import 'package:facemarkapp/presentation/attendance_update_page_screen/binding/attendance_update_page_binding.dart';
import 'package:facemarkapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:facemarkapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashPageScreen = '/splash_page_screen';

  static const String signInPageScreen = '/sign_in_page_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String imagePreviewPage = '/image_preview_page';

  static const String attendancePageScreen = '/attendance_page_screen';

  static String? _selectedBranch;
  static String? _selectedSection;
  static String? _selectedSubject;
  static DateTime? _selectedDate;
  static List<String> usnList = [];

  static const String manualUpdatePage = '/manual_update_page';

  static const String attendanceGraphPageScreen =
      '/attendance_graph_page_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String passwordChangePageScreen = '/password_change_page_screen';

  static const String dashboardPageScreen = '/dashboard_page_screen';

  static const String sendAttendancePageScreen = '/send_attendance_page_screen';

  static const String attendanceUpdatePageScreen =
      '/attendance_update_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashPageScreen,
      page: () => SplashPageScreen(),
      bindings: [
        SplashPageBinding(),
      ],
    ),
    GetPage(
      name: signInPageScreen,
      page: () => SignInPageScreen(),
      bindings: [
        SignInPageBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: attendancePageScreen,
      page: () => AttendancePageScreen(
        branch: _selectedBranch!,
        section: _selectedSection!,
        subject: _selectedSubject!,
        date: _selectedDate!,
        usns: usnList,
      ),
      bindings: [
        AttendancePageBinding(),
      ],
    ),
    GetPage(
      name: attendanceGraphPageScreen,
      page: () => AttendanceGraphPageScreen(),
      bindings: [
        AttendanceGraphPageBinding(),
      ],
    ),
    GetPage(
      name: passwordChangePageScreen,
      page: () => PasswordChangePageScreen(),
      bindings: [
        PasswordChangePageBinding(),
      ],
    ),
    GetPage(
      name: dashboardPageScreen,
      page: () => DashboardPageScreen(),
      bindings: [
        DashboardPageBinding(),
      ],
    ),
    // GetPage(
    //   name: sendAttendancePageScreen,
    //   page: () => SendAttendancePageScreen(),
    //   bindings: [
    //     SendAttendancePageBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: attendanceUpdatePageScreen,
    //   page: () => AttendanceUpdatePageScreen(),
    //   bindings: [
    //     AttendanceUpdatePageBinding(),
    //   ],
    // ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashPageScreen(),
      bindings: [
        SplashPageBinding(),
      ],
    )
  ];
}
