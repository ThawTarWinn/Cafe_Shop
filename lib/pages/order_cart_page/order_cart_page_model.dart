import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_cart_page_widget.dart' show OrderCartPageWidget;
import 'package:flutter/material.dart';

class OrderCartPageModel extends FlutterFlowModel<OrderCartPageWidget> {
  ///  Local state fields for this page.

  CostStruct? totalcost;
  void updateTotalcostStruct(Function(CostStruct) updateFn) {
    updateFn(totalcost ??= CostStruct());
  }

  bool memberdiscount = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
