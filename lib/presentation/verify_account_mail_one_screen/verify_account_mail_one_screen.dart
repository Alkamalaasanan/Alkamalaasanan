import 'controller/verify_account_mail_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:harsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:harsh_s_application1/widgets/custom_elevated_button.dart';
import 'package:harsh_s_application1/widgets/custom_text_form_field.dart';

class VerifyAccountMailOneScreen
    extends GetWidget<VerifyAccountMailOneController> {
  const VerifyAccountMailOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 32.h, top: 121.v, right: 32.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAnimationLnbjy2tkSmall,
                      height: 202.adaptSize,
                      width: 202.adaptSize),
                  SizedBox(height: 42.v),
                  CustomTextFormField(
                      controller: controller.enterMailIDController,
                      hintText: "msg_enter_your_mail".tr,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 16.v, 9.h, 15.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle281,
                              height: 18.adaptSize,
                              width: 18.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 49.v),
                      contentPadding: EdgeInsets.only(
                          top: 15.v, right: 12.h, bottom: 15.v)),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      height: 38.v,
                      width: 146.h,
                      text: "lbl_send_otp".tr,
                      buttonStyle: CustomButtonStyles.outlineBlackF,
                      onPressed: () {
                        onTapSendOTP();
                      }),
                  SizedBox(height: 15.v),
                  Container(
                      width: 217.h,
                      margin: EdgeInsets.only(left: 39.h, right: 40.h),
                      child: Text("msg_we_will_send_a_verification".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.labelLargeGray800SemiBold12_1)),
                  SizedBox(height: 5.v)
                ]))));
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
            text: "msg_verify_e_mail_account".tr,
            margin: EdgeInsets.only(left: 7.h)),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the verifyAccountMailTwoScreen when the action is triggered.
  onTapSendOTP() {
    Get.toNamed(
      AppRoutes.verifyAccountMailTwoScreen,
    );
  }
}
