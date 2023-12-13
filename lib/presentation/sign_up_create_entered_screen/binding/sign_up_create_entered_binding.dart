import '../controller/sign_up_create_entered_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpCreateEnteredScreen.
///
/// This class ensures that the SignUpCreateEnteredController is created when the
/// SignUpCreateEnteredScreen is first loaded.
class SignUpCreateEnteredBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpCreateEnteredController());
  }
}
