import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/sign_up_create_screen/models/sign_up_create_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpCreateScreen.
///
/// This class manages the state of the SignUpCreateScreen, including the
/// current signUpCreateModelObj
class SignUpCreateController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpCreateModel> signUpCreateModelObj = SignUpCreateModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.signUpCreateEnteredScreen,
      );
    });
  }
}
