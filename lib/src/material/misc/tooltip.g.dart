// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tooltip.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$TooltipBase extends WidgetBase {
  String excludeFromSemanticsKey = 'excludeFromSemantics';
  String heightKey = 'height';
  String keyKey = 'key';
  String marginKey = 'margin';
  String messageKey = 'message';
  String paddingKey = 'padding';
  String preferBelowKey = 'preferBelow';
  String verticalOffsetKey = 'verticalOffset';
  String childKey = 'child';
  String textStyleKey = 'textStyle';

  @override
  Map<String, String> get properties => {
        'excludeFromSemantics': 'bool',
        'height': 'double',
        'key': 'Key',
        'margin': 'EdgeInsets',
        'message': 'String',
        'padding': 'EdgeInsets',
        'preferBelow': 'bool',
        'verticalOffset': 'double',
        'child': 'Widget',
        'textStyle': 'TextStyleBase',
      };

  bool get excludeFromSemanticsVal {
    if (params[excludeFromSemanticsKey] != null) {
      return params[excludeFromSemanticsKey] as bool;
    }
    return null;
  }

  set excludeFromSemanticsVal(bool val) {
    params[excludeFromSemanticsKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get heightVal {
    if (params[heightKey] != null) {
      return params[heightKey] as double;
    }
    return null;
  }

  set heightVal(double val) {
    params[heightKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Key get keyVal {
    if (params[keyKey] != null) {
      String _val = params[keyKey].toString();
      if (_val.startsWith('#')) {
        _val = _val.substring(1);
        if (_val.startsWith('ValueKey')) {
          _val = _val.replaceAll('ValueKey', '');
          _val = _val.replaceAll('<String>', '');
          _val = _val.replaceAll('(', '');
          _val = _val.replaceAll(')', '');
        }
      }
      return ValueKey('$_val');
    }
    return null;
  }

  set keyVal(Key val) {
    if (val == null) {
      params[keyKey] = null;
    } else {
      params[keyKey] = "#ValueKey('$val')";
    }
    widgetContext.onUpdate(id, widgetData);
  }

  EdgeInsets get marginVal {
    EdgeInsets _spacing = EdgeInsets.all(0.0);
    if (params[marginKey] != null) {
      double top = 0;
      double bottom = 0;
      double left = 0;
      double right = 0;
      Map<String, dynamic> _spacingParams = params[marginKey]['params'];
      top = _spacingParams['top'] ?? 0;
      bottom = _spacingParams['bottom'] ?? 0;
      left = _spacingParams['left'] ?? 0;
      right = _spacingParams['right'] ?? 0;
      _spacing = EdgeInsets.fromLTRB(left, top, right, bottom);
    }
    return _spacing;
  }

  set marginVal(EdgeInsets val) {
    params[marginKey] = {
      "name": "EdgeInsets.only",
      "id": "marginKeyEdgeInsets",
      "params": {
        "top": val.top,
        "bottom": val.bottom,
        "left": val.left,
        "right": val.right,
      }
    };
    widgetContext.onUpdate(id, widgetData);
  }

  String get messageVal {
    if (params[messageKey] != null) {
      return params[messageKey] as String;
    }
    return '';
  }

  set messageVal(String val) {
    params[messageKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  EdgeInsets get paddingVal {
    EdgeInsets _spacing = EdgeInsets.all(0.0);
    if (params[paddingKey] != null) {
      double top = 0;
      double bottom = 0;
      double left = 0;
      double right = 0;
      Map<String, dynamic> _spacingParams = params[paddingKey]['params'];
      top = _spacingParams['top'] ?? 0;
      bottom = _spacingParams['bottom'] ?? 0;
      left = _spacingParams['left'] ?? 0;
      right = _spacingParams['right'] ?? 0;
      _spacing = EdgeInsets.fromLTRB(left, top, right, bottom);
    }
    return _spacing;
  }

  set paddingVal(EdgeInsets val) {
    params[paddingKey] = {
      "name": "EdgeInsets.only",
      "id": "paddingKeyEdgeInsets",
      "params": {
        "top": val.top,
        "bottom": val.bottom,
        "left": val.left,
        "right": val.right,
      }
    };
    widgetContext.onUpdate(id, widgetData);
  }

  bool get preferBelowVal {
    if (params[preferBelowKey] != null) {
      return params[preferBelowKey] as bool;
    }
    return null;
  }

  set preferBelowVal(bool val) {
    params[preferBelowKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get verticalOffsetVal {
    if (params[verticalOffsetKey] != null) {
      return params[verticalOffsetKey] as double;
    }
    return null;
  }

  set verticalOffsetVal(double val) {
    params[verticalOffsetKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  final _childListen = ValueNotifier<bool>(false);
  WidgetBase get childVal {
    if (params[childKey] != null) {
      return widgetRender(widgetContext, params[childKey]);
    }
    return null;
  }

  void childValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'TaD8dgrrRk';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = '_QrtS9WoYe';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '9JxMU2irtD';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  TextStyleBase get textStyleVal {
    if (params[textStyleKey] != null) {
      return TextStyleBase(params[textStyleKey], widgetContext, widgetRender);
    }
    return null;
  }

  set textStyleVal(TextStyleBase val) {
    params[textStyleKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Tooltip(
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context) ??
                (widgetRender(
                    widgetContext,
                    json.decode(json.encode({
                      'id': 'EtsVSBWoWL',
                      'name': 'Placeholder',
                      'params': {},
                    })))).build(context))
            : PreferredSize(
                preferredSize: Size(100.0, 100.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _childListen.value = false;
                    if (val != null) {
                      childValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _childListen.value = false;
                  },
                  onWillAccept: (val) {
                    _childListen.value = true;
                    return _childListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _childListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(100.0, 100.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        excludeFromSemantics: excludeFromSemanticsVal,
        height: heightVal,
        key: keyVal,
        margin: marginVal,
        message: messageVal,
        padding: paddingVal,
        preferBelow: preferBelowVal,
        textStyle: textStyleVal?.build(context),
        verticalOffset: verticalOffsetVal,
      ),
    );
  }
}
