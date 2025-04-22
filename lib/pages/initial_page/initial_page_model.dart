import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component_widget/cofe_start_slide_component/cofe_start_slide_component_widget.dart';
import '/index.dart';
import 'initial_page_widget.dart' show InitialPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class InitialPageModel extends FlutterFlowModel<InitialPageWidget> {
  ///  Local state fields for this page.

  int? pageindex;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for CofeStartSlideComponent component.
  late CofeStartSlideComponentModel cofeStartSlideComponentModel1;
  // Model for CofeStartSlideComponent component.
  late CofeStartSlideComponentModel cofeStartSlideComponentModel2;
  // Model for CofeStartSlideComponent component.
  late CofeStartSlideComponentModel cofeStartSlideComponentModel3;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
    cofeStartSlideComponentModel1 =
        createModel(context, () => CofeStartSlideComponentModel());
    cofeStartSlideComponentModel2 =
        createModel(context, () => CofeStartSlideComponentModel());
    cofeStartSlideComponentModel3 =
        createModel(context, () => CofeStartSlideComponentModel());
  }

  @override
  void dispose() {
    cofeStartSlideComponentModel1.dispose();
    cofeStartSlideComponentModel2.dispose();
    cofeStartSlideComponentModel3.dispose();
  }
}
