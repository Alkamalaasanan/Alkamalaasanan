import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/verify_account_mail_one_screen/models/verify_account_mail_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerifyAccountMailOneScreen.
///
/// This class manages the state of the VerifyAccountMailOneScreen, including the
/// current verifyAccountMailOneModelObj
class VerifyAccountMailOneController extends GetxController {
  TextEditingController enterMailIDController = TextEditingController();

  Rx<VerifyAccountMailOneModel> verifyAccountMailOneModelObj =
      VerifyAccountMailOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    enterMailIDController.dispose();
  }
}
