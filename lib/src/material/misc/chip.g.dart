// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$ChipBase extends WidgetBase {
  String autofocusKey = 'autofocus';
  String backgroundColorKey = 'backgroundColor';
  String clipBehaviorKey = 'clipBehavior';
  String deleteButtonTooltipMessageKey = 'deleteButtonTooltipMessage';
  String deleteIconKey = 'deleteIcon';
  String deleteIconColorKey = 'deleteIconColor';
  String elevationKey = 'elevation';
  String keyKey = 'key';
  String labelPaddingKey = 'labelPadding';
  String materialTapTargetSizeKey = 'materialTapTargetSize';
  String onDeletedKey = 'onDeleted';
  String paddingKey = 'padding';
  String shadowColorKey = 'shadowColor';
  String visualDensityKey = 'visualDensity';
  String labelKey = 'label';
  String avatarKey = 'avatar';
  String labelStyleKey = 'labelStyle';

  @override
  Map<String, String> get properties => {
        'autofocus': 'bool',
        'backgroundColor': 'Color',
        'clipBehavior': 'Clip',
        'deleteButtonTooltipMessage': 'String',
        'deleteIcon': 'Widget',
        'deleteIconColor': 'Color',
        'elevation': 'double',
        'key': 'Key',
        'labelPadding': 'EdgeInsets',
        'materialTapTargetSize': 'MaterialTapTargetSize',
        'onDeleted': 'Function',
        'padding': 'EdgeInsets',
        'shadowColor': 'Color',
        'visualDensity': 'VisualDensity',
        'label': 'Widget',
        'avatar': 'Widget',
        'labelStyle': 'TextStyleBase',
      };

  bool get autofocusVal {
    if (params[autofocusKey] != null) {
      return params[autofocusKey] as bool;
    }
    return null;
  }

  set autofocusVal(bool val) {
    params[autofocusKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

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

  List<Clip> get clipBehaviorValues => [
        Clip.none,
        Clip.antiAlias,
        Clip.antiAliasWithSaveLayer,
        Clip.hardEdge,
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

  String get deleteButtonTooltipMessageVal {
    if (params[deleteButtonTooltipMessageKey] != null) {
      return params[deleteButtonTooltipMessageKey] as String;
    }
    return null;
  }

  set deleteButtonTooltipMessageVal(String val) {
    params[deleteButtonTooltipMessageKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  WidgetBase get deleteIconVal {
    if (params[deleteIconKey] != null) {
      return widgetRender(widgetContext, params[deleteIconKey]);
    }
    return null;
  }

  void deleteIconValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'BfceEGXsSk';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'p2bOc83OnN';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'lnemx1rBto';
    }
    params[deleteIconKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get deleteIconColorVal {
    if (params[deleteIconColorKey] != null) {
      int _value = null;
      String description = params[deleteIconColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[deleteIconColorKey] is Map) {
        if (params[deleteIconColorKey]['name'] == 'Color' &&
            params[deleteIconColorKey]['params'] != null &&
            params[deleteIconColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[deleteIconColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set deleteIconColorVal(Color val) {
    params[deleteIconColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  double get elevationVal {
    if (params[elevationKey] != null) {
      return params[elevationKey] as double;
    }
    return null;
  }

  set elevationVal(double val) {
    params[elevationKey] = val;
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

  EdgeInsets get labelPaddingVal {
    EdgeInsets _spacing = EdgeInsets.all(0.0);
    if (params[labelPaddingKey] != null) {
      double top = 0;
      double bottom = 0;
      double left = 0;
      double right = 0;
      Map<String, dynamic> _spacingParams = params[labelPaddingKey]['params'];
      top = _spacingParams['top'] ?? 0;
      bottom = _spacingParams['bottom'] ?? 0;
      left = _spacingParams['left'] ?? 0;
      right = _spacingParams['right'] ?? 0;
      _spacing = EdgeInsets.fromLTRB(left, top, right, bottom);
    }
    return _spacing;
  }

  set labelPaddingVal(EdgeInsets val) {
    params[labelPaddingKey] = {
      "name": "EdgeInsets.only",
      "id": "labelPaddingKeyEdgeInsets",
      "params": {
        "top": val.top,
        "bottom": val.bottom,
        "left": val.left,
        "right": val.right,
      }
    };
    widgetContext.onUpdate(id, widgetData);
  }

  List<MaterialTapTargetSize> get materialTapTargetSizeValues => [
        MaterialTapTargetSize.shrinkWrap,
        MaterialTapTargetSize.padded,
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

  String get onDeletedVal {
    if (params[onDeletedKey] != null) {
      return params[onDeletedKey] as String;
    }
    return null;
  }

  set onDeletedVal(String val) {
    params[onDeletedKey] = val;
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

  Color get shadowColorVal {
    if (params[shadowColorKey] != null) {
      int _value = null;
      String description = params[shadowColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[shadowColorKey] is Map) {
        if (params[shadowColorKey]['name'] == 'Color' &&
            params[shadowColorKey]['params'] != null &&
            params[shadowColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[shadowColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set shadowColorVal(Color val) {
    params[shadowColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  List<VisualDensity> get visualDensityValues => [
        VisualDensity.adaptivePlatformDensity,
        VisualDensity.comfortable,
        VisualDensity.compact,
        VisualDensity.standard,
      ];

  VisualDensity get visualDensityVal {
    if (params[visualDensityKey] != null) {
      final _value = params[visualDensityKey].toString().replaceAll('#', '');
      return visualDensityValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => null,
      );
    }
    return null;
  }

  set visualDensityVal(VisualDensity val) {
    params[visualDensityKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  final _labelListen = ValueNotifier<bool>(false);
  WidgetBase get labelVal {
    if (params[labelKey] != null) {
      return widgetRender(widgetContext, params[labelKey]);
    }
    return null;
  }

  void labelValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'KfQgA6-mAw';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'IQenNr4nPr';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '9wrKmSWnHz';
    }
    params[labelKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _avatarListen = ValueNotifier<bool>(false);
  WidgetBase get avatarVal {
    if (params[avatarKey] != null) {
      return widgetRender(widgetContext, params[avatarKey]);
    }
    return null;
  }

  void avatarValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'CwyyiGqX45';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'OYkodQIc1T';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '45KPM-zeoEr';
    }
    params[avatarKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  TextStyleBase get labelStyleVal {
    if (params[labelStyleKey] != null) {
      return TextStyleBase(params[labelStyleKey], widgetContext, widgetRender);
    }
    return null;
  }

  set labelStyleVal(TextStyleBase val) {
    params[labelStyleKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Chip(
        autofocus: autofocusVal,
        avatar: !widgetContext.isDragging ||
                (widgetContext.isDragging && avatarVal?.build(context) != null)
            ? (avatarVal?.build(context))
            : PreferredSize(
                preferredSize: Size(35.0, 35.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _avatarListen.value = false;
                    if (val != null) {
                      avatarValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _avatarListen.value = false;
                  },
                  onWillAccept: (val) {
                    _avatarListen.value = true;
                    return _avatarListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _avatarListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(35.0, 35.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        backgroundColor: backgroundColorVal,
        clipBehavior: clipBehaviorVal,
        deleteButtonTooltipMessage: deleteButtonTooltipMessageVal,
        deleteIcon: deleteIconVal?.build(context),
        deleteIconColor: deleteIconColorVal,
        elevation: elevationVal,
        key: keyVal,
        label: !widgetContext.isDragging ||
                (widgetContext.isDragging && labelVal?.build(context) != null)
            ? (labelVal?.build(context) ??
                (widgetRender(
                    widgetContext,
                    json.decode(json.encode({
                      'id': 'uiUv852rOKR',
                      'name': 'Placeholder',
                      'params': {},
                    })))).build(context))
            : PreferredSize(
                preferredSize: Size(60.0, 35.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _labelListen.value = false;
                    if (val != null) {
                      labelValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _labelListen.value = false;
                  },
                  onWillAccept: (val) {
                    _labelListen.value = true;
                    return _labelListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _labelListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(60.0, 35.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        labelPadding: labelPaddingVal,
        labelStyle: labelStyleVal?.build(context),
        materialTapTargetSize: materialTapTargetSizeVal,
        onDeleted: () => onAction(context, onDeletedVal),
        padding: paddingVal,
        shadowColor: shadowColorVal,
        visualDensity: visualDensityVal,
      ),
    );
  }
}
