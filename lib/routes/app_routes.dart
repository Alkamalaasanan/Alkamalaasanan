import 'package:harsh_s_application1/presentation/sign_up_create_screen/sign_up_create_screen.dart';
import 'package:harsh_s_application1/presentation/sign_up_create_screen/binding/sign_up_create_binding.dart';
import 'package:harsh_s_application1/presentation/sign_up_create_entered_screen/sign_up_create_entered_screen.dart';
import 'package:harsh_s_application1/presentation/sign_up_create_entered_screen/binding/sign_up_create_entered_binding.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_one_screen/verify_account_mail_one_screen.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_one_screen/binding/verify_account_mail_one_binding.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_two_screen/verify_account_mail_two_screen.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_two_screen/binding/verify_account_mail_two_binding.dart';
import 'package:harsh_s_application1/presentation/loading_job_apply_screen/loading_job_apply_screen.dart';
import 'package:harsh_s_application1/presentation/loading_job_apply_screen/binding/loading_job_apply_binding.dart';
import 'package:harsh_s_application1/presentation/select_a_institute_screen/select_a_institute_screen.dart';
import 'package:harsh_s_application1/presentation/select_a_institute_screen/binding/select_a_institute_binding.dart';
import 'package:harsh_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:harsh_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpCreateScreen = '/sign_up_create_screen';

  static const String signUpCreateEnteredScreen =
      '/sign_up_create_entered_screen';

  static const String verifyAccountMailOneScreen =
      '/verify_account_mail_one_screen';

  static const String verifyAccountMailTwoScreen =
      '/verify_account_mail_two_screen';

  static const String loadingJobApplyScreen = '/loading_job_apply_screen';

  static const String selectAInstituteScreen = '/select_a_institute_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpCreateScreen,
      page: () => SignUpCreateScreen(),
      bindings: [
        SignUpCreateBinding(),
      ],
    ),
    GetPage(
      name: signUpCreateEnteredScreen,
      page: () => SignUpCreateEnteredScreen(),
      bindings: [
        SignUpCreateEnteredBinding(),
      ],
    ),
    GetPage(
      name: verifyAccountMailOneScreen,
      page: () => VerifyAccountMailOneScreen(),
      bindings: [
        VerifyAccountMailOneBinding(),
      ],
    ),
    GetPage(
      name: verifyAccountMailTwoScreen,
      page: () => VerifyAccountMailTwoScreen(),
      bindings: [
        VerifyAccountMailTwoBinding(),
      ],
    ),
    GetPage(
      name: loadingJobApplyScreen,
      page: () => LoadingJobApplyScreen(),
      bindings: [
        LoadingJobApplyBinding(),
      ],
    ),
    GetPage(
      name: selectAInstituteScreen,
      page: () => SelectAInstituteScreen(),
      bindings: [
        SelectAInstituteBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpCreateScreen(),
      bindings: [
        SignUpCreateBinding(),
      ],
    )
  ];
}
