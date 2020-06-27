// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$ContainerBase extends WidgetBase {
  String childKey = 'child';
  String colorKey = 'color';
  String widthKey = 'width';
  String heightKey = 'height';
  String keyKey = 'key';
  String marginKey = 'margin';
  String paddingKey = 'padding';
  String transformKey = 'transform';
  String clipBehaviorKey = 'clipBehavior';
  String alignmentKey = 'alignment';

  @override
  Map<String, String> get properties => {
        'child': 'Widget',
        'color': 'Color',
        'width': 'double',
        'height': 'double',
        'key': 'Key',
        'margin': 'EdgeInsets',
        'padding': 'EdgeInsets',
        'transform': 'Matrix4',
        'clipBehavior': 'Clip',
        'alignment': 'Alignment',
      };

  final _childListen = ValueNotifier<bool>(false);
  WidgetBase get childVal {
    if (params[childKey] != null) {
      return widgetRender(params[childKey]);
    }
    return null;
  }

  void childValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'IVe7tS4AWid';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'uAk7FgmG94r';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '6f2ad2vuhH2';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get colorVal {
    if (params[colorKey] != null) {
      int _value = null;
      String description = params[colorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[colorKey] is Map) {
        if (params[colorKey]['name'] == 'Color' &&
            params[colorKey]['params'] != null &&
            params[colorKey]['params']['0'] != null) {
          _value = int.tryParse(params[colorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set colorVal(Color val) {
    params[colorKey] = "#Color(${val.value})";
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

  Matrix4 get transformVal {
    final _matrix = Matrix4.identity();
    if (params[transformKey] != null) {
      if (params[transformKey] is List) {
        final values = List.from(params[transformKey]);
        _matrix.setValues(
          values[0],
          values[1],
          values[2],
          values[3],
          values[4],
          values[5],
          values[6],
          values[7],
          values[8],
          values[9],
          values[10],
          values[11],
          values[12],
          values[13],
          values[14],
          values[15],
        );
      } else if (params[transformKey] is String) {
        final description = params[transformKey].toString();
        final _entryMatches = 'setEntry('.allMatches(description).toList();
        final _rotateXMatches = 'rotateX('.allMatches(description).toList();
        final _rotateYMatches = 'rotateY('.allMatches(description).toList();
        final _rotateZMatches = 'rotateZ('.allMatches(description).toList();
        for (final idx in _entryMatches) {
          int start = idx.end;
          int end = description.indexOf(')', start);
          final _values = description
              .substring(start, end)
              .split(',')
              .map((e) => num.tryParse(e.trim()))
              .toList();
          _matrix.setEntry(
            _values[0].toInt(),
            _values[1].toInt(),
            _values[2].toDouble(),
          );
        }
        for (final idx in _rotateXMatches) {
          int start = idx.end;
          int end = description.indexOf(')', start);
          final _value = num.tryParse(description.substring(start, end).trim());
          _matrix.rotateX(_value.toDouble());
        }
        for (final idx in _rotateYMatches) {
          int start = idx.end;
          int end = description.indexOf(')', start);
          final _value = num.tryParse(description.substring(start, end).trim());
          _matrix.rotateY(_value.toDouble());
        }
        for (final idx in _rotateZMatches) {
          int start = idx.end;
          int end = description.indexOf(')', start);
          final _value = num.tryParse(description.substring(start, end).trim());
          _matrix.rotateZ(_value.toDouble());
        }
      }
    }
    return _matrix;
  }

  set transformVal(Matrix4 val) {
    params[transformKey] = val.storage.toList();
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

  List<Alignment> get alignmentValues => [
        Alignment.bottomCenter,
        Alignment.bottomLeft,
        Alignment.bottomRight,
        Alignment.center,
        Alignment.centerLeft,
        Alignment.centerRight,
        Alignment.topCenter,
        Alignment.topLeft,
        Alignment.topRight,
      ];

  Alignment get alignmentVal {
    if (params[alignmentKey] != null) {
      final _value = params[alignmentKey].toString().replaceAll('#', '');
      return alignmentValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => Alignment.center,
      );
    }
    return Alignment.center;
  }

  set alignmentVal(Alignment val) {
    params[alignmentKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Container(
        alignment: alignmentVal,
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context))
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
        clipBehavior: clipBehaviorVal,
        color: colorVal,
        height: heightVal,
        key: keyVal,
        margin: marginVal,
        padding: paddingVal,
        transform: transformVal,
        width: widthVal,
      ),
    );
  }
}
