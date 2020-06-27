// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_child_scroll_view.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$SingleChildScrollViewBase extends WidgetBase {
  String clipBehaviorKey = 'clipBehavior';
  String keyKey = 'key';
  String primaryKey = 'primary';
  String childKey = 'child';
  String scrollDirectionKey = 'scrollDirection';
  String reverseKey = 'reverse';
  String dragStartBehaviorKey = 'dragStartBehavior';

  @override
  Map<String, String> get properties => {
        'clipBehavior': 'Clip',
        'key': 'Key',
        'primary': 'bool',
        'child': 'Widget',
        'scrollDirection': 'Axis',
        'reverse': 'bool',
        'dragStartBehavior': 'DragStartBehavior',
      };

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
        orElse: () => Clip.hardEdge,
      );
    }
    return Clip.hardEdge;
  }

  set clipBehaviorVal(Clip val) {
    params[clipBehaviorKey] = "$val";
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

  bool get primaryVal {
    if (params[primaryKey] != null) {
      return params[primaryKey] as bool;
    }
    return null;
  }

  set primaryVal(bool val) {
    params[primaryKey] = val;
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
    _data['id'] = 'wmP-_XWDGpY';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'm439Z-v7Iet';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'dAwsz2fpoyM';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  List<Axis> get scrollDirectionValues => [
        Axis.horizontal,
        Axis.vertical,
      ];

  Axis get scrollDirectionVal {
    if (params[scrollDirectionKey] != null) {
      final _value = params[scrollDirectionKey].toString().replaceAll('#', '');
      return scrollDirectionValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => Axis.vertical,
      );
    }
    return Axis.vertical;
  }

  set scrollDirectionVal(Axis val) {
    params[scrollDirectionKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  bool get reverseVal {
    if (params[reverseKey] != null) {
      return params[reverseKey] as bool;
    }
    return false;
  }

  set reverseVal(bool val) {
    params[reverseKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  List<DragStartBehavior> get dragStartBehaviorValues => [
        DragStartBehavior.down,
        DragStartBehavior.start,
      ];

  DragStartBehavior get dragStartBehaviorVal {
    if (params[dragStartBehaviorKey] != null) {
      final _value =
          params[dragStartBehaviorKey].toString().replaceAll('#', '');
      return dragStartBehaviorValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => DragStartBehavior.start,
      );
    }
    return DragStartBehavior.start;
  }

  set dragStartBehaviorVal(DragStartBehavior val) {
    params[dragStartBehaviorKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: SingleChildScrollView(
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context) ??
                (widgetRender(json.decode(json.encode({
                  'id': '5U4l-1NKwQu',
                  'name': 'Placeholder',
                  'params': {},
                }))) as WidgetBase)
                    .build(context))
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
        dragStartBehavior: dragStartBehaviorVal,
        key: keyVal,
        primary: primaryVal,
        reverse: reverseVal,
        scrollDirection: scrollDirectionVal,
      ),
    );
  }
}
