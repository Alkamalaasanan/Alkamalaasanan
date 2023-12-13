import '../controller/select_a_institute_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectAInstituteScreen.
///
/// This class ensures that the SelectAInstituteController is created when the
/// SelectAInstituteScreen is first loaded.
class SelectAInstituteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectAInstituteController());
  }
}
