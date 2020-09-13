import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:widget_gen/widget_gen_annotations.dart';

import '../../../flutter_dynamic_widget.dart';
import '../enums.dart';
import '../library.dart';

part 'align.g.dart';

@WidgetClass('Align')
class AlignBase extends _$AlignBase {
  AlignBase(this.widgetData, this.widgetContext, this.widgetRender);

  double heightFactor;
  Key key;
  double widthFactor;

  @override
  final Map<String, dynamic> widgetData;

  @override
  final WidgetContext widgetContext;

  @override
  final GenerateWidget widgetRender;

  @override
  get onAction => (context, val) => MaterialBase.onAction(context, val);

  @WidgetKey.widget(
    acceptWidth: 100,
    acceptHeight: 100,
    defaultValue: 'Placeholder',
  )
  Widget child;

  @enumAlignment
  Alignment alignment;
}
