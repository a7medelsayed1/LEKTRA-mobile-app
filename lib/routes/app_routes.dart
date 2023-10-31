import 'package:get/get_navigation/src/routes/get_route.dart';
import '../presentation/screens/add_your_experience_screen.dart';
import '../presentation/screens/app_info_screen.dart';
import '../presentation/screens/comments_screen.dart';
import '../presentation/screens/confirm_screen.dart';
import '../presentation/screens/log_in_screen.dart';
import '../presentation/screens/my_file_screen.dart';
import '../presentation/screens/parent_profile_screen.dart';
import '../presentation/screens/post_your_experience_screen.dart';
import '../presentation/screens/sign_up_screen.dart';
import '../presentation/screens/write_your_report_screen.dart';
import '../presentation/screens/your_experience_container_screen.dart';
import '../presentation/screens/your_report_patient_screen.dart';
import '../presentation/screens/your_report_patient_three_screen.dart';

class AppRoutes {
  static const String yourExperiencePage = '/your_experience_page';

  static const String yourExperienceContainerScreen =
      '/your_experience_container_screen';

  static const String addYourExperienceScreen = '/add_your_experience_screen';

  static const String postYourExperienceScreen = '/post_your_experience_screen';

  static const String commentsTwoScreen = '/comments_two_screen';

  static const String commentsScreen = '/comments_screen';

  static const String commentsOneScreen = '/comments_one_screen';

  static const String parentProfileScreen = '/parent_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';
  static const String yourReportPatientScreen = '/your_report_patient_screen';

  static const String yourReportDoctorTwoScreen =
      '/your_report_doctor_two_screen';

  static const String splashScreen = '/splash_screen';

  static const String welcomeOneScreen = '/welcome_one_screen';

  static const String welcomeTwoScreen = '/welcome_two_screen';

  static const String welcomeThreeScreen = '/welcome_three_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';
  static const String yourReportPatientOnePage= '/your_report_patient_navi';
  static const String confirmScreen = '/confirm_screen';

  static const String cameraScreen = '/camera_screen';

  static const String homeParentsScreen = '/home_parents_screen';

  static const String gellaryThreePage = '/gellary_three_page';

  static const String gellaryThreeContainerScreen =
      '/gellary_three_container_screen';

  static const String gellaryTwoScreen = '/gellary_two_screen';

  static const String writeYourReportScreen = '/write_your_report_screen';

  static const String aboutChildScreen = '/about_child_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appInfoScreen = '/app_info_screen';

  static const String yourReportPatientThreeScreen =
      '/your_report_patient_three_screen';

  static const String yourReportPatientTwoScreen =
      '/your_report_patient_two_screen';

  static const String yourReportPatientOneScreen =
      '/your_report_patient_one_screen';

  static const String yourReportDoctorScreen = '/your_report_doctor_screen';

  static const String yourReportDoctorOneScreen =
      '/your_report_doctor_one_screen';

  static const String myFileScreen = '/my_file_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileOneScreen = '/edit_profile_one_screen';

  static const String doctorCalendarScreen = '/doctor_calender';


  static List<GetPage> pages = [
    GetPage(
      name: yourExperienceContainerScreen,
      page: () => YourExperienceContainerScreen(),

    ),
    GetPage(
      name: addYourExperienceScreen,
      page: () => AddYourExperienceScreen(),

    ),
    GetPage(
      name: postYourExperienceScreen,
      page: () => PostYourExperienceScreen(),

    ),

    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),

    ),

    GetPage(
      name: parentProfileScreen,
      page: () => ParentProfileScreen(),

    ),
    GetPage(
      name: initialRoute,
      page: () => YourExperienceContainerScreen(),

    ),
    // GetPage(
    //   name: yourReportPatientScreen,
    //   page: () => YourReportPatientScreen(),
    //
    // ),
    // GetPage(
    //   name: welcomeOneScreen,
    //   page: () => WelcomeOneScreen(),
    //   bindings: [
    //     WelcomeOneBinding(),
    //   ],
    // ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),

    ),
//     GetPage(
//       name: signUpScreen,
//       page: () => SignUpScreen(),
// bindings: []
//     ),
    GetPage(
      name: confirmScreen,
      page: () => ConfirmScreen(),

    ),

    // GetPage(
    //   name: homeParentsScreen,
    //   page: () => HomeParentsScreen(),
    //   bindings: [
    //     HomeParentsBinding(),
    //   ],
    // ),

    GetPage(
      name: writeYourReportScreen,
      page: () => WriteYourReportScreen(),

    ),
    GetPage(
      name: appInfoScreen,
      page: () => AppInfoScreen(),

    ),
    GetPage(
      name: yourReportPatientThreeScreen,
      page: () => YourReportPatientThreeScreen(),

    ),

    GetPage(
      name: myFileScreen,
      page: () => MyFileScreen(),

    ),

    GetPage(
      name: initialRoute,
      page: () => YourExperienceContainerScreen(),
    )
    // GetPage(
    //   name: initialRoute,
    //   page: () => SplashScreen(),
    //   bindings: [
    //
    //   ],
    // )
  ];
}


