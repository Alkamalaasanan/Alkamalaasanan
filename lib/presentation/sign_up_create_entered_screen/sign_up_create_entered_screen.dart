import 'controller/sign_up_create_entered_controller.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/core/utils/validation_functions.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:harsh_s_application1/widgets/custom_checkbox_button.dart';
import 'package:harsh_s_application1/widgets/custom_elevated_button.dart';
import 'package:harsh_s_application1/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class SignUpCreateEnteredScreen
    extends GetWidget<SignUpCreateEnteredController> {
  SignUpCreateEnteredScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 31.h, vertical: 13.v),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(flex: 48),
                          SizedBox(
                              height: 97.v,
                              width: 230.h,
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLogo22,
                                        height: 97.v,
                                        width: 230.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          width: 51.h,
                                                          decoration: AppDecoration
                                                              .outline
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: OutlineGradientButton(
                                                              padding: EdgeInsets.only(
                                                                  left: 1.h,
                                                                  top: 1.v,
                                                                  right: 1.h,
                                                                  bottom: 1.v),
                                                              strokeWidth: 1.h,
                                                              gradient: LinearGradient(
                                                                  begin: Alignment(0, 0),
                                                                  end: Alignment(1, 1),
                                                                  colors: [
                                                                    theme
                                                                        .colorScheme
                                                                        .onError,
                                                                    appTheme
                                                                        .indigoA400
                                                                  ]),
                                                              corners: Corners(
                                                                  topLeft: Radius.circular(8),
                                                                  topRight: Radius.circular(8),
                                                                  bottomLeft: Radius.circular(8),
                                                                  bottomRight: Radius.circular(8)),
                                                              child: Padding(padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), child: Text("lbl_beta".tr, style: CustomTextStyles.labelLargeMontserratOnError))))),
                                                  SizedBox(height: 42.v),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "lbl_for".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium),
                                                        TextSpan(text: " "),
                                                        TextSpan(
                                                            text: "lbl_practice"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleSmallYellow900)
                                                      ]),
                                                      textAlign: TextAlign.left)
                                                ])))
                                  ])),
                          SizedBox(height: 11.v),
                          Text("msg_create_new_account".tr,
                              style: theme.textTheme.titleLarge),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              controller: controller
                                  .akshayashokanpothanimiotcoinController,
                              hintText: "msg_akshayashokanpo".tr,
                              hintStyle: CustomTextStyles.labelLargeOnPrimary,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.h, 16.v, 9.h, 15.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgRectangle2811,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 49.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "err_msg_please_enter_valid_email".tr;
                                }
                                return null;
                              }),
                          SizedBox(height: 16.v),
                          Obx(() => CustomTextFormField(
                              controller: controller.akshayImiotController,
                              hintText: "msg_akshay_imiot2023".tr,
                              hintStyle: CustomTextStyles.labelLargeOnPrimary,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.h, 16.v, 9.h, 15.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgRectangle2812,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 49.v),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 16.v, 9.h, 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle28218x18,
                                          height: 18.adaptSize,
                                          width: 18.adaptSize))),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 49.v),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
                                }
                                return null;
                              },
                              obscureText: controller.isShowPassword.value,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlueGrayTL18,
                              fillColor: appTheme.gray100)),
                          SizedBox(height: 16.v),
                          _buildRememberMe(),
                          SizedBox(height: 24.v),
                          CustomElevatedButton(
                              text: "lbl_sign_up".tr,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumPrimaryContainer,
                              onPressed: () {
                                onTapSignUp();
                              }),
                          Spacer(flex: 51),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 11.v, bottom: 9.v),
                                        child: SizedBox(
                                            width: 69.h, child: Divider())),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("msg_or_continue_with".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray800)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 11.v, bottom: 9.v),
                                        child: SizedBox(
                                            width: 72.h,
                                            child: Divider(indent: 4.h)))
                                  ]))
                        ]))),
            bottomNavigationBar: _buildTen()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h, right: 321.h, bottom: 2.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildRememberMe() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_remember_me".tr,
        value: controller.rememberMe.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          controller.rememberMe.value = value;
        }));
  }

  /// Section Widget
  Widget _buildTen() {
    return Padding(
        padding: EdgeInsets.only(bottom: 25.v),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame37445,
              height: 50.v,
              width: 220.h),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: theme.textTheme.labelMedium),
                    TextSpan(text: "  ".tr),
                    TextSpan(
                        text: "lbl_sign_in".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the verifyAccountMailOneScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.verifyAccountMailOneScreen,
    );
  }
}
