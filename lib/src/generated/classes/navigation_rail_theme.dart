import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import '../core.dart';

class NavigationRailThemeRender<T> extends StatelessWidget {

  factory NavigationRailThemeRender.fromJson(Map<String, dynamic> data, VoidCallback update) {
    return NavigationRailThemeRender(update,
      dataVal: null,
      childVal: null,
      widgetKeyVal: null,
    );
  }

  NavigationRailThemeRender(this._update, {
    @required this.dataVal,
    @required this.childVal,
    @required this.widgetKeyVal,
  });

  @override
  final VoidCallback _update;

  Core<NavigationRailThemeData> dataVal;

  NavigationRailThemeData get data {
    return dataVal.value;
  }

  set data(NavigationRailThemeData val) {
    if (val == this.data) {
      return;
    }
    dataVal.value = val;
  }

  Core<Widget> childVal;

  Widget get child {
    return childVal.value;
  }

  set child(Widget val) {
    if (val == this.child) {
      return;
    }
    childVal.value = val;
  }

  Core<Key> widgetKeyVal;

  Key get widgetKey {
    return widgetKeyVal.value;
  }

  set widgetKey(Key val) {
    if (val == this.widgetKey) {
      return;
    }
    widgetKeyVal.value = val;
  }


  @override
  Map<String, dynamic> get staticFields => {
  };

  @override
  List<Core> get props => [
    this.dataVal,
    this.childVal,
    this.widgetKeyVal,
  ];

  @override
  String get description {
    final sb = StringBuffer();
    sb.writeln("[given an explicit non-null value.]");
    return sb.toString();
  }

  @override
  Map<String, Object> get constructors {
     return {
      'default': NavigationRailTheme(
        data: this.data,
        child: this.child,
      ),
    };
  }

  @override
  Map<String, Map<String, dynamic>> get properties {
     return {
      'default': {
        'data': this.data,
        'child': this.child,
      },
    };
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': 'NavigationRailTheme',
      'props': {
        'data': this.dataVal.toJson(),
        'child': this.childVal.toJson(),
        'widgetKey': this.widgetKeyVal.toJson(),
      }
    };
  }

  @override
  Map<String, String> toCode() {
    return {
    'default': """NavigationRailTheme(
       data: ${this.dataVal.toCode()},
       child: ${this.childVal.toCode()},
    )""",
    };
  }

  final _controller = ValueNotifier<WidgetRect>(null);
  ValueListenable<WidgetRect> get stats => _controller;

  @override
  Widget build(BuildContext context) {
    if (isWidget) return TrackedWidget(
      controller: _controller,
      child: defaultBase,
    );
    return Container();
  }

  @override
  bool get isWidget => defaultBase is Widget;
  
  @override
  Object get defaultBase => constructors['default'];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
      properties.add(DiagnosticsProperty('data', this.data));
      properties.add(DiagnosticsProperty('child', this.child));
      properties.add(DiagnosticsProperty('widgetKey', this.widgetKey));
  }
}
