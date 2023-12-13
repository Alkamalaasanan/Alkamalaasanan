import 'controller/loading_job_apply_controller.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoadingJobApplyScreen extends GetWidget<LoadingJobApplyController> {
  const LoadingJobApplyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 293.h,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 50.h,
              vertical: 46.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder65,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAnimationLnaobcbdSmall,
                  height: 189.adaptSize,
                  width: 189.adaptSize,
                ),
                SizedBox(height: 16.v),
                Text(
                  "msg_e_mail_id_verified".tr,
                  style: CustomTextStyles.titleLargeBlue500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
