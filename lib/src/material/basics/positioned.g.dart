// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioned.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$PositionedBase extends WidgetBase {
  String keyKey = 'key';
  String childKey = 'child';
  String widthKey = 'width';
  String heightKey = 'height';
  String topKey = 'top';
  String bottomKey = 'bottom';
  String leftKey = 'left';
  String rightKey = 'right';

  @override
  Map<String, String> get properties => {
        'key': 'Key',
        'child': 'Widget',
        'width': 'double',
        'height': 'double',
        'top': 'double',
        'bottom': 'double',
        'left': 'double',
        'right': 'double',
      };

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

  final _childListen = ValueNotifier<bool>(false);
  WidgetBase get childVal {
    if (params[childKey] != null) {
      return widgetRender(params[childKey]);
    }
    return null;
  }

  void childValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'nx1J9N-WAeU';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'JIsOm-n7cIi';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'SN7GVBtl4bd';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  double get widthVal {
    if (params[widthKey] != null) {
      return params[widthKey] as double;
    }
    return null;
  }

  set widthVal(double val) {
    params[widthKey] = val;
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

  double get topVal {
    if (params[topKey] != null) {
      return params[topKey] as double;
    }
    return null;
  }

  set topVal(double val) {
    params[topKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get bottomVal {
    if (params[bottomKey] != null) {
      return params[bottomKey] as double;
    }
    return null;
  }

  set bottomVal(double val) {
    params[bottomKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get leftVal {
    if (params[leftKey] != null) {
      return params[leftKey] as double;
    }
    return null;
  }

  set leftVal(double val) {
    params[leftKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get rightVal {
    if (params[rightKey] != null) {
      return params[rightKey] as double;
    }
    return null;
  }

  set rightVal(double val) {
    params[rightKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return Positioned(
      bottom: bottomVal,
      child: !widgetContext.isDragging ||
              (widgetContext.isDragging && childVal?.build(context) != null)
          ? (childVal?.build(context) ??
              (widgetRender(json.decode(json.encode({
                'id': '7QPTpY_g2QG',
                'name': 'Placeholder',
                'params': {},
              }))) as WidgetBase)
                  .build(context))
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
      height: heightVal,
      key: keyVal,
      left: leftVal,
      right: rightVal,
      top: topVal,
      width: widthVal,
    );
  }
}
