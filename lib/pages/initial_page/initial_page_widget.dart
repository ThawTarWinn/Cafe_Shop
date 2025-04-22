import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component_widget/cofe_start_slide_component/cofe_start_slide_component_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'initial_page_model.dart';
export 'initial_page_model.dart';

class InitialPageWidget extends StatefulWidget {
  const InitialPageWidget({super.key});

  static String routeName = 'InitialPage';
  static String routePath = '/initialPage';

  @override
  State<InitialPageWidget> createState() => _InitialPageWidgetState();
}

class _InitialPageWidgetState extends State<InitialPageWidget> {
  late InitialPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FlutterFlowSwipeableStack(
                onSwipeFn: (index) {},
                onLeftSwipe: (index) {},
                onRightSwipe: (index) {},
                onUpSwipe: (index) {},
                onDownSwipe: (index) {},
                itemBuilder: (context, index) {
                  return [
                    () => Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/coffeeshop3.png',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    HomePageWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.cofeStartSlideComponentModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CofeStartSlideComponentWidget(
                                    para1: '\"More Than Just Coffee.\"',
                                    para2:
                                        'It\'s the aroma of fresh beginnings. \nThe warmth of good conversations. \nThe pause you deserve.',
                                    para3:
                                        'Learn the art, the craft, and the culture behind every bean.\nStart your journey with coffee today.',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/coffeeshop1.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.cofeStartSlideComponentModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CofeStartSlideComponentWidget(
                                  para1: '\"Sip Happens, Stay Grounded.\"',
                                  para2:
                                      'Your daily dose of calm, in every cup.',
                                  para3:
                                      'Discover the story behind every brew.',
                                ),
                              ),
                            ),
                          ],
                        ),
                    () => Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/coffeeshop2.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cofeStartSlideComponentModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: CofeStartSlideComponentWidget(
                                para1: ' \"Where Coffee Meets Craft.\"',
                                para2:
                                    'Wooden tables. Warm lights. The perfect brew.\nEvery seat tells a story, every sip feels like home.',
                                para3:
                                    'Explore the space. Stay for the coffee.',
                              ),
                            ),
                          ],
                        ),
                  ][index]();
                },
                itemCount: 3,
                controller: _model.swipeableStackController,
                loop: true,
                cardDisplayCount: 1,
                scale: 1.0,
                threshold: 1.0,
                backCardOffset: const Offset(0.1, 0.1),
                allowedSwipeDirection: AllowedSwipeDirection.only(up: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
