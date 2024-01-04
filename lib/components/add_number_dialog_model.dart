import '/flutter_flow/flutter_flow_util.dart';
import 'add_number_dialog_widget.dart' show AddNumberDialogWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddNumberDialogModel extends FlutterFlowModel<AddNumberDialogWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  final emailAddressMask = MaskTextInputFormatter(mask: '+## (###) ###-##-##');
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Номер занадто короткий';
    }

    if (val.length < 19) {
      return 'Requires at least 19 characters.';
    }
    if (val.length > 19) {
      return 'Maximum 19 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
