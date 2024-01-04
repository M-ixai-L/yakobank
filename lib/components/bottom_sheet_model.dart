import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_sheet_widget.dart' show BottomSheetWidget;
import 'package:flutter/material.dart';

class BottomSheetModel extends FlutterFlowModel<BottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode1;
  TextEditingController? shortBioController1;
  String? Function(BuildContext, String?)? shortBioController1Validator;
  // State field(s) for cardNumber1 widget.
  FocusNode? cardNumber1FocusNode;
  TextEditingController? cardNumber1Controller;
  String? Function(BuildContext, String?)? cardNumber1ControllerValidator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode2;
  TextEditingController? shortBioController2;
  String? Function(BuildContext, String?)? shortBioController2Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? exitTransaction2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CardsRecord? cardRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? exitTransaction;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? recipient;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? transaction;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode1?.dispose();
    shortBioController1?.dispose();

    cardNumber1FocusNode?.dispose();
    cardNumber1Controller?.dispose();

    shortBioFocusNode2?.dispose();
    shortBioController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
