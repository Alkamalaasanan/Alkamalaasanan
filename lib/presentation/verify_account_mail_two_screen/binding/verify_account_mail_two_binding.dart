import '../controller/verify_account_mail_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyAccountMailTwoScreen.
///
/// This class ensures that the VerifyAccountMailTwoController is created when the
/// VerifyAccountMailTwoScreen is first loaded.
class VerifyAccountMailTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyAccountMailTwoController());
  }
}
