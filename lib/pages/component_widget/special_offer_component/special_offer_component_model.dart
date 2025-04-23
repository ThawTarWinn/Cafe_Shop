import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component_widget/limited_container_component/limited_container_component_widget.dart';
import 'special_offer_component_widget.dart' show SpecialOfferComponentWidget;
import 'package:flutter/material.dart';

class SpecialOfferComponentModel
    extends FlutterFlowModel<SpecialOfferComponentWidget> {
  ///  State fields for stateful widgets in this component.

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
