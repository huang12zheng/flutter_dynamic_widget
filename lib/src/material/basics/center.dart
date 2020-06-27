import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:widget_gen/widget_gen_annotations.dart';

import '../../../flutter_dynamic_widget.dart';
import '../library.dart';

part 'center.g.dart';

@WidgetClass('Center')
class CenterBase extends _$CenterBase {
  CenterBase(this.widgetData, this.widgetContext);

  @WidgetKey.widget(
    acceptWidth: 100,
    acceptHeight: 100,
    defaultValue: 'Placeholder',
  )
  Widget child;
  double heightFactor;
  Key key;
  double widthFactor;

  @override
  final Map<String, dynamic> widgetData;

  @override
  final WidgetContext widgetContext;

  @override
  get onAction => (context, val) => MaterialBase.onAction(context, val);

  @override
  GenerateWidget get widgetRender =>
      (val) => MaterialBase(val, widgetContext).base;
}
