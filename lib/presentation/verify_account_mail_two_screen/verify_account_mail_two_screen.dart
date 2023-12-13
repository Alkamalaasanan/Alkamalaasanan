import 'controller/verify_account_mail_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:harsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:harsh_s_application1/widgets/custom_elevated_button.dart';
import 'package:harsh_s_application1/widgets/custom_pin_code_text_field.dart';

class VerifyAccountMailTwoScreen
    extends GetWidget<VerifyAccountMailTwoController> {
  const VerifyAccountMailTwoScreen({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(left: 42.h, top: 75.v, right: 42.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAnimationLnbjy2tkSmall,
                      height: 202.adaptSize,
                      width: 202.adaptSize),
                  SizedBox(height: 12.v),
                  Container(
                      width: 240.h,
                      margin: EdgeInsets.symmetric(horizontal: 18.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_otp_has_been_sent2".tr,
                                style:
                                    CustomTextStyles.titleSmallGray800SemiBold),
                            TextSpan(
                                text: "msg_akshayashokanpo".tr,
                                style: CustomTextStyles.titleSmallIndigoA700)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 8.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      height: 38.v,
                      width: 146.h,
                      text: "lbl_verify".tr,
                      buttonStyle: CustomButtonStyles.outlineBlackF,
                      onPressed: () {
                        onTapVerify();
                      }),
                  SizedBox(height: 11.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_resend_in".tr,
                            style:
                                CustomTextStyles.labelLargeGray800SemiBold12),
                        TextSpan(
                            text: "lbl_30_sec".tr,
                            style: CustomTextStyles.labelLargeBlue900)
                      ]),
                      textAlign: TextAlign.left),
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

  /// Navigates to the loadingJobApplyScreen when the action is triggered.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.loadingJobApplyScreen,
    );
  }
}
