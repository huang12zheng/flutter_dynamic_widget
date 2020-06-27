import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widget_gen/widget_gen_annotations.dart';

import '../../../flutter_dynamic_widget.dart';
import '../library.dart';

part 'scaffold.g.dart';

@WidgetClass('Scaffold')
class ScaffoldBase extends _$ScaffoldBase {
  ScaffoldBase(this.widgetData, this.widgetContext);
  @WidgetKey.sizedWidget(
    acceptWidth: 100,
    acceptHeight: kToolbarHeight,
  )
  Widget appBar;
  Color backgroundColor;
  @WidgetKey.widget(
    acceptWidth: 100,
    acceptHeight: 100,
  )
  Widget body;
  @WidgetKey.widget(
    acceptWidth: 100,
    acceptHeight: 50,
  )
  Widget bottomNavigationBar;
  Widget bottomSheet;
  Widget drawer;
  double drawerEdgeDragWidth;
  Color drawerScrimColor;
  Widget endDrawer;
  @WidgetKey.widget(
    acceptWidth: 50,
    acceptHeight: 50,
  )
  Widget floatingActionButton;
  FloatingActionButtonAnimator floatingActionButtonAnimator;
  Key key;
  @ListWidgetKey(empty: false)
  List<Widget> persistentFooterButtons;
  bool resizeToAvoidBottomInset;
  bool resizeToAvoidBottomPadding;

  @override
  final Map<String, dynamic> widgetData;

  @override
  final WidgetContext widgetContext;

  @override
  GenerateWidget get widgetRender =>
      (val) => MaterialBase(val, widgetContext).base;

  @override
  get onAction => (context, val) => MaterialBase.onAction(context, val);

  @EnumKey.fab()
  FloatingActionButtonLocation floatingActionButtonLocation;

  @PropertyKey(defaultValue: 'true')
  bool primary;

  @EnumKey(
    defaultValue: 'DragStartBehavior.start',
    values: DragStartBehavior.values,
  )
  DragStartBehavior drawerDragStartBehavior;

  @PropertyKey(defaultValue: 'false')
  bool extendBody;

  @PropertyKey(defaultValue: 'false')
  bool extendBodyBehindAppBar;

  @PropertyKey(defaultValue: 'true')
  bool drawerEnableOpenDragGesture;

  @PropertyKey(defaultValue: 'true')
  bool endDrawerEnableOpenDragGesture;
}
