import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/select_a_institute_screen/models/select_a_institute_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectAInstituteScreen.
///
/// This class manages the state of the SelectAInstituteScreen, including the
/// current selectAInstituteModelObj
class SelectAInstituteController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectAInstituteModel> selectAInstituteModelObj =
      SelectAInstituteModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
