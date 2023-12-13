import '../controller/verify_account_mail_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyAccountMailOneScreen.
///
/// This class ensures that the VerifyAccountMailOneController is created when the
/// VerifyAccountMailOneScreen is first loaded.
class VerifyAccountMailOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyAccountMailOneController());
  }
}
