import 'package:flutter/material.dart';
import 'package:widget_gen/widget_gen_annotations.dart';

import '../../../flutter_dynamic_widget.dart';
import '../library.dart';
import 'icon_data.dart';

part 'icon.g.dart';

@WidgetClass('Icon')
class IconBase extends _$IconBase {
  IconBase(this.widgetData, this.widgetContext);

  @SupportedKey(key: '0')
  IconDataBase iconData;

  Color color;
  String semanticLabel;
  double size;

  @override
  final Map<String, dynamic> widgetData;

  @override
  final WidgetContext widgetContext;

  @override
  GenerateWidget get widgetRender =>
      (val) => MaterialBase(val, widgetContext).base;

  @override
  get onAction => (context, val) => MaterialBase.onAction(context, val);

  @EnumKey(values: TextDirection.values)
  TextDirection textDirection;
}
