import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_widget.dart' show Auth2Widget;
import 'package:flutter/material.dart';

class Auth2Model extends FlutterFlowModel<Auth2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for na widget.
  FocusNode? naFocusNode;
  TextEditingController? naController;
  String? Function(BuildContext, String?)? naControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressController1;
  late bool emailAddressVisibility1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for pa widget.
  FocusNode? paFocusNode;
  TextEditingController? paController;
  String? Function(BuildContext, String?)? paControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressController2;
  late bool emailAddressVisibility2;
  String? Function(BuildContext, String?)? emailAddressController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailAddressVisibility1 = false;
    emailAddressVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    naFocusNode?.dispose();
    naController?.dispose();

    emailAddressFocusNode1?.dispose();
    emailAddressController1?.dispose();

    paFocusNode?.dispose();
    paController?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
