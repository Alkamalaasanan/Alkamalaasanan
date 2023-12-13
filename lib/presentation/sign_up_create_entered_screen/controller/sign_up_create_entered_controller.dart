import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/sign_up_create_entered_screen/models/sign_up_create_entered_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpCreateEnteredScreen.
///
/// This class manages the state of the SignUpCreateEnteredScreen, including the
/// current signUpCreateEnteredModelObj
class SignUpCreateEnteredController extends GetxController {
  TextEditingController akshayashokanpothanimiotcoinController =
      TextEditingController();

  TextEditingController akshayImiotController = TextEditingController();

  Rx<SignUpCreateEnteredModel> signUpCreateEnteredModelObj =
      SignUpCreateEnteredModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    akshayashokanpothanimiotcoinController.dispose();
    akshayImiotController.dispose();
  }
}
