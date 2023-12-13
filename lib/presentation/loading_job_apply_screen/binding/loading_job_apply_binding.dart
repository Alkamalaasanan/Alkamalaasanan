import '../controller/loading_job_apply_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoadingJobApplyScreen.
///
/// This class ensures that the LoadingJobApplyController is created when the
/// LoadingJobApplyScreen is first loaded.
class LoadingJobApplyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingJobApplyController());
  }
}
