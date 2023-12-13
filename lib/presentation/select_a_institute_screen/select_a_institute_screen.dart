import 'controller/select_a_institute_controller.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:harsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:harsh_s_application1/widgets/custom_elevated_button.dart';
import 'package:harsh_s_application1/widgets/custom_radio_button.dart';
import 'package:harsh_s_application1/widgets/custom_search_view.dart';

class SelectAInstituteScreen extends GetWidget<SelectAInstituteController> {
  const SelectAInstituteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 7.h),
                          child: CustomSearchView(
                              controller: controller.searchController,
                              hintText: "msg_search_for_a_institute".tr)),
                      SizedBox(height: 20.v),
                      _buildSelectAInstituteGroup19(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildApplyNowButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h, top: 19.v, bottom: 23.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "msg_select_institute".tr,
            margin: EdgeInsets.only(left: 7.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSelectAInstituteGroup19() {
    return Obx(() => Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 81.h),
              child: CustomRadioButton(
                  text: "msg_kannur_engineering".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[0],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 36.h),
              child: CustomRadioButton(
                  text: "msg_college_of_engineering".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[1],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v),
              child: CustomRadioButton(
                  text: "msg_govt_college_of".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[2],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 9.h),
              child: CustomRadioButton(
                  text: "msg_model_engineering".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[3],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 17.v, right: 225.h),
              child: CustomRadioButton(
                  text: "lbl_cusat".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[4],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 19.v, right: 34.h),
              child: CustomRadioButton(
                  text: "msg_college_of_engineering2".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[5],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 66.h),
              child: CustomRadioButton(
                  text: "msg_vadakara_engineering".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[6],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 156.h),
              child: CustomRadioButton(
                  text: "lbl_anna_university".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[7],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 17.v, right: 244.h),
              child: CustomRadioButton(
                  text: "lbl_vtu".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[8],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 205.h),
              child: CustomRadioButton(
                  text: "lbl_iim_indore".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[9],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 19.v, right: 182.h),
              child: CustomRadioButton(
                  text: "lbl_iit_bangalore".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[10],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 18.v, right: 174.h),
              child: CustomRadioButton(
                  text: "lbl_tiruchirappalli".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[11],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.only(top: 17.v, right: 169.h),
              child: CustomRadioButton(
                  text: "lbl_iit_ahmedabad".tr,
                  value: controller
                      .selectAInstituteModelObj.value.radioList.value[12],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildApplyNowButton() {
    return Container(
        margin: EdgeInsets.only(bottom: 36.v),
        decoration: AppDecoration.fillPrimaryContainer,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Divider(color: appTheme.blueGray100.withOpacity(0.5)),
          CustomElevatedButton(
              text: "lbl_continue".tr,
              margin: EdgeInsets.only(left: 34.h, top: 17.v, right: 35.h),
              buttonStyle: CustomButtonStyles.outlineBlackFTL23)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
