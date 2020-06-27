// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_action_button.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$FloatingActionButtonBase extends WidgetBase {
  String backgroundColorKey = 'backgroundColor';
  String childKey = 'child';
  String disabledElevationKey = 'disabledElevation';
  String focusColorKey = 'focusColor';
  String focusElevationKey = 'focusElevation';
  String foregroundColorKey = 'foregroundColor';
  String hoverColorKey = 'hoverColor';
  String hoverElevationKey = 'hoverElevation';
  String keyKey = 'key';
  String onPressedKey = 'onPressed';
  String splashColorKey = 'splashColor';
  String tooltipKey = 'tooltip';
  String heroTagKey = 'heroTag';
  String autofocusKey = 'autofocus';
  String miniKey = 'mini';
  String isExtendedKey = 'isExtended';
  String materialTapTargetSizeKey = 'materialTapTargetSize';
  String clipBehaviorKey = 'clipBehavior';

  @override
  Map<String, String> get properties => {
        'backgroundColor': 'Color',
        'child': 'Widget',
        'disabledElevation': 'double',
        'focusColor': 'Color',
        'focusElevation': 'double',
        'foregroundColor': 'Color',
        'hoverColor': 'Color',
        'hoverElevation': 'double',
        'key': 'Key',
        'onPressed': 'Function',
        'splashColor': 'Color',
        'tooltip': 'String',
        'heroTag': 'Object',
        'autofocus': 'bool',
        'mini': 'bool',
        'isExtended': 'bool',
        'materialTapTargetSize': 'MaterialTapTargetSize',
        'clipBehavior': 'Clip',
      };

  Color get backgroundColorVal {
    if (params[backgroundColorKey] != null) {
      int _value = null;
      String description = params[backgroundColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[backgroundColorKey] is Map) {
        if (params[backgroundColorKey]['name'] == 'Color' &&
            params[backgroundColorKey]['params'] != null &&
            params[backgroundColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[backgroundColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set backgroundColorVal(Color val) {
    params[backgroundColorKey] = "#Color(${val.value})";
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
    _data['id'] = 'U7Tnpo2qAly';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = '4aDGKY1Y2VE';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '5yCpMPwetbh';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  double get disabledElevationVal {
    if (params[disabledElevationKey] != null) {
      return params[disabledElevationKey] as double;
    }
    return null;
  }

  set disabledElevationVal(double val) {
    params[disabledElevationKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get focusColorVal {
    if (params[focusColorKey] != null) {
      int _value = null;
      String description = params[focusColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[focusColorKey] is Map) {
        if (params[focusColorKey]['name'] == 'Color' &&
            params[focusColorKey]['params'] != null &&
            params[focusColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[focusColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set focusColorVal(Color val) {
    params[focusColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  double get focusElevationVal {
    if (params[focusElevationKey] != null) {
      return params[focusElevationKey] as double;
    }
    return null;
  }

  set focusElevationVal(double val) {
    params[focusElevationKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get foregroundColorVal {
    if (params[foregroundColorKey] != null) {
      int _value = null;
      String description = params[foregroundColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[foregroundColorKey] is Map) {
        if (params[foregroundColorKey]['name'] == 'Color' &&
            params[foregroundColorKey]['params'] != null &&
            params[foregroundColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[foregroundColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set foregroundColorVal(Color val) {
    params[foregroundColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  Color get hoverColorVal {
    if (params[hoverColorKey] != null) {
      int _value = null;
      String description = params[hoverColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[hoverColorKey] is Map) {
        if (params[hoverColorKey]['name'] == 'Color' &&
            params[hoverColorKey]['params'] != null &&
            params[hoverColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[hoverColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set hoverColorVal(Color val) {
    params[hoverColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  double get hoverElevationVal {
    if (params[hoverElevationKey] != null) {
      return params[hoverElevationKey] as double;
    }
    return null;
  }

  set hoverElevationVal(double val) {
    params[hoverElevationKey] = val;
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

  String get onPressedVal {
    if (params[onPressedKey] != null) {
      return params[onPressedKey] as String;
    }
    return null;
  }

  set onPressedVal(String val) {
    params[onPressedKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get splashColorVal {
    if (params[splashColorKey] != null) {
      int _value = null;
      String description = params[splashColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[splashColorKey] is Map) {
        if (params[splashColorKey]['name'] == 'Color' &&
            params[splashColorKey]['params'] != null &&
            params[splashColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[splashColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set splashColorVal(Color val) {
    params[splashColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  String get tooltipVal {
    if (params[tooltipKey] != null) {
      return params[tooltipKey] as String;
    }
    return null;
  }

  set tooltipVal(String val) {
    params[tooltipKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Object get heroTagVal {
    if (params[heroTagKey] != null) {
      return params[heroTagKey] as Object;
    }
    return UniqueKey();
  }

  set heroTagVal(Object val) {
    params[heroTagKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get autofocusVal {
    if (params[autofocusKey] != null) {
      return params[autofocusKey] as bool;
    }
    return false;
  }

  set autofocusVal(bool val) {
    params[autofocusKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get miniVal {
    if (params[miniKey] != null) {
      return params[miniKey] as bool;
    }
    return false;
  }

  set miniVal(bool val) {
    params[miniKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get isExtendedVal {
    if (params[isExtendedKey] != null) {
      return params[isExtendedKey] as bool;
    }
    return false;
  }

  set isExtendedVal(bool val) {
    params[isExtendedKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  List<MaterialTapTargetSize> get materialTapTargetSizeValues => [
        MaterialTapTargetSize.padded,
        MaterialTapTargetSize.shrinkWrap,
      ];

  MaterialTapTargetSize get materialTapTargetSizeVal {
    if (params[materialTapTargetSizeKey] != null) {
      final _value =
          params[materialTapTargetSizeKey].toString().replaceAll('#', '');
      return materialTapTargetSizeValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => null,
      );
    }
    return null;
  }

  set materialTapTargetSizeVal(MaterialTapTargetSize val) {
    params[materialTapTargetSizeKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  List<Clip> get clipBehaviorValues => [
        Clip.none,
        Clip.hardEdge,
        Clip.antiAlias,
        Clip.antiAliasWithSaveLayer,
      ];

  Clip get clipBehaviorVal {
    if (params[clipBehaviorKey] != null) {
      final _value = params[clipBehaviorKey].toString().replaceAll('#', '');
      return clipBehaviorValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => Clip.none,
      );
    }
    return Clip.none;
  }

  set clipBehaviorVal(Clip val) {
    params[clipBehaviorKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: FloatingActionButton(
        autofocus: autofocusVal,
        backgroundColor: backgroundColorVal,
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context))
            : PreferredSize(
                preferredSize: Size(30.0, 30.0),
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
                              size: Size(30.0, 30.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        clipBehavior: clipBehaviorVal,
        disabledElevation: disabledElevationVal,
        focusColor: focusColorVal,
        focusElevation: focusElevationVal,
        foregroundColor: foregroundColorVal,
        heroTag: heroTagVal,
        hoverColor: hoverColorVal,
        hoverElevation: hoverElevationVal,
        isExtended: isExtendedVal,
        key: keyVal,
        materialTapTargetSize: materialTapTargetSizeVal,
        mini: miniVal,
        onPressed: () => onAction(context, onPressedVal),
        splashColor: splashColorVal,
        tooltip: tooltipVal,
      ),
    );
  }
}
