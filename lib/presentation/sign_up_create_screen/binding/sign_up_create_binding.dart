import '../controller/sign_up_create_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpCreateScreen.
///
/// This class ensures that the SignUpCreateController is created when the
/// SignUpCreateScreen is first loaded.
class SignUpCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpCreateController());
  }
}
