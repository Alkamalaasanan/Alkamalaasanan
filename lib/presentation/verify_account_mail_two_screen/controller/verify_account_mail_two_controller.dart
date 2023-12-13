import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_two_screen/models/verify_account_mail_two_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerifyAccountMailTwoScreen.
///
/// This class manages the state of the VerifyAccountMailTwoScreen, including the
/// current verifyAccountMailTwoModelObj
class VerifyAccountMailTwoController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerifyAccountMailTwoModel> verifyAccountMailTwoModelObj =
      VerifyAccountMailTwoModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
