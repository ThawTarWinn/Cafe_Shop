import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component_widget/limited_container_component/limited_container_component_widget.dart';
import 'drink_details_page_widget.dart' show DrinkDetailsPageWidget;
import 'package:flutter/material.dart';

class DrinkDetailsPageModel extends FlutterFlowModel<DrinkDetailsPageWidget> {
  ///  Local state fields for this page.

  int? coffeesize = 1;

  DrinkinfoStruct? drinkdetail;
  void updateDrinkdetailStruct(Function(DrinkinfoStruct) updateFn) {
    updateFn(drinkdetail ??= DrinkinfoStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for LimitedContainerComponent component.
  late LimitedContainerComponentModel limitedContainerComponentModel;

  @override
  void initState(BuildContext context) {
    limitedContainerComponentModel =
        createModel(context, () => LimitedContainerComponentModel());
  }

  @override
  void dispose() {
    limitedContainerComponentModel.dispose();
  }
}
