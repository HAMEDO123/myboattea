import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tripdetails_widget.dart' show TripdetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TripdetailsModel extends FlutterFlowModel<TripdetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressController2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressController3;
  String? Function(BuildContext, String?)? emailAddressController3Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode4;
  TextEditingController? emailAddressController4;
  String? Function(BuildContext, String?)? emailAddressController4Validator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue3;
  FormFieldController<List<String>>? choiceChipsValueController3;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue4;
  FormFieldController<List<String>>? choiceChipsValueController4;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue5;
  FormFieldController<List<String>>? choiceChipsValueController5;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue6;
  FormFieldController<List<String>>? choiceChipsValueController6;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue7;
  FormFieldController<List<String>>? choiceChipsValueController7;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue8;
  FormFieldController<List<String>>? choiceChipsValueController8;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue9;
  FormFieldController<List<String>>? choiceChipsValueController9;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue10;
  FormFieldController<List<String>>? choiceChipsValueController10;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue11;
  FormFieldController<List<String>>? choiceChipsValueController11;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode5;
  TextEditingController? emailAddressController5;
  String? Function(BuildContext, String?)? emailAddressController5Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode6;
  TextEditingController? emailAddressController6;
  String? Function(BuildContext, String?)? emailAddressController6Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode7;
  TextEditingController? emailAddressController7;
  String? Function(BuildContext, String?)? emailAddressController7Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressController3?.dispose();

    emailAddressFocusNode4?.dispose();
    emailAddressController4?.dispose();

    emailAddressFocusNode5?.dispose();
    emailAddressController5?.dispose();

    emailAddressFocusNode6?.dispose();
    emailAddressController6?.dispose();

    emailAddressFocusNode7?.dispose();
    emailAddressController7?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
