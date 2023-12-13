import 'package:harsh_s_application1/core/app_export.dart';
import 'package:harsh_s_application1/presentation/loading_job_apply_screen/models/loading_job_apply_model.dart';

/// A controller class for the LoadingJobApplyScreen.
///
/// This class manages the state of the LoadingJobApplyScreen, including the
/// current loadingJobApplyModelObj
class LoadingJobApplyController extends GetxController {
  Rx<LoadingJobApplyModel> loadingJobApplyModelObj = LoadingJobApplyModel().obs;
}
