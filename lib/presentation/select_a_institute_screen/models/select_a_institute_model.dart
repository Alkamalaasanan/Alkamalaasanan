import '../../../core/app_export.dart';

/// This class defines the variables used in the [select_a_institute_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectAInstituteModel {
  Rx<List<String>> radioList = Rx([
    "msg_kannur_engineering",
    "msg_college_of_engineering",
    "msg_govt_college_of",
    "msg_model_engineering",
    "lbl_cusat",
    "msg_college_of_engineering2",
    "msg_vadakara_engineering",
    "lbl_anna_university",
    "lbl_vtu",
    "lbl_iim_indore",
    "lbl_iit_bangalore",
    "lbl_tiruchirappalli",
    "lbl_iit_ahmedabad"
  ]);
}
