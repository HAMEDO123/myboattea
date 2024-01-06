import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth2_widget.dart' show Auth2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {
    emailAddressVisibility1 = false;
    emailAddressVisibility2 = false;
  }

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
