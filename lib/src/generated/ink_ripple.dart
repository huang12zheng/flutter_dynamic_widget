import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

class InkRippleRender<T> extends StatelessWidget {

  const InkRippleRender({
    this.controller,
    this.referenceBox,
    this.position,
    this.color,
    this.textDirection,
    this.containedInkWell,
    this.rectCallback,
    this.borderRadius,
    this.customBorder,
    this.radius,
    this.onRemoved,
    this.widgetKey,
  });

  final MaterialInkController controller;
  final RenderBox referenceBox;
  final Offset position;
  final Color color;
  final TextDirection textDirection;
  final bool containedInkWell;
  final RectCallback rectCallback;
  final BorderRadius borderRadius;
  final ShapeBorder customBorder;
  final double radius;
  final VoidCallback onRemoved;
  final Key widgetKey;

  Map<String, dynamic> get staticFields => {
  '_radius': null,
  '_radiusController': null,
  '_fadeIn': null,
  '_fadeInController': null,
  '_fadeOut': null,
  '_fadeOutController': null,
  'splashFactory': null,
  };

  @override
  String get description {
    final sb = StringBuffer();
    return sb.toString();
  }

  @override
  Map<String, Object> get constructors {
     return <String, Object>{
    'default': InkRipple(
       controller: this.controller,
       referenceBox: this.referenceBox,
       position: this.position,
       color: this.color,
       textDirection: this.textDirection,
       containedInkWell: this.containedInkWell,
       rectCallback: this.rectCallback,
       borderRadius: this.borderRadius,
       customBorder: this.customBorder,
       radius: this.radius,
       onRemoved: this.onRemoved,
    ),
    };
  }

  @override
  Widget build(BuildContext context) {
    if (isWidget) {
      return defaultBase;
    }
    return Container();
  }

  bool get isWidget => defaultBase is Widget;
  Object get defaultBase => constructors['default'];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
      properties.add(DiagnosticsProperty('controller', this.controller));
      properties.add(DiagnosticsProperty('referenceBox', this.referenceBox));
      properties.add(DiagnosticsProperty('position', this.position));
      properties.add(DiagnosticsProperty('color', this.color));
      properties.add(DiagnosticsProperty('textDirection', this.textDirection));
      properties.add(DiagnosticsProperty('containedInkWell', this.containedInkWell));
      properties.add(DiagnosticsProperty('rectCallback', this.rectCallback));
      properties.add(DiagnosticsProperty('borderRadius', this.borderRadius));
      properties.add(DiagnosticsProperty('customBorder', this.customBorder));
      properties.add(DiagnosticsProperty('radius', this.radius));
      properties.add(DiagnosticsProperty('onRemoved', this.onRemoved));
      properties.add(DiagnosticsProperty('widgetKey', this.widgetKey));
  }
}

