// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_bar_item.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$BottomNavigationBarItemBase extends PropertyBase {
  String backgroundColorKey = 'backgroundColor';
  String iconKey = 'icon';
  String titleKey = 'title';
  String activeIconKey = 'activeIcon';

  @override
  Map<String, String> get properties => {
        'backgroundColor': 'Color',
        'icon': 'Widget',
        'title': 'Widget',
        'activeIcon': 'Widget',
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

  final _iconListen = ValueNotifier<bool>(false);
  WidgetBase get iconVal {
    if (params[iconKey] != null) {
      return widgetRender(widgetContext, params[iconKey]);
    }
    return null;
  }

  void iconValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'LuGlm7HLGs4';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'uGkw17-I1BM';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'YVZ6PK6JfqN';
    }
    params[iconKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _titleListen = ValueNotifier<bool>(false);
  WidgetBase get titleVal {
    if (params[titleKey] != null) {
      return widgetRender(widgetContext, params[titleKey]);
    }
    return null;
  }

  void titleValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = '1DPgCQuw4a_';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'fc8E8GSu7cq';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'OGBOPsxLiFf';
    }
    params[titleKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _activeIconListen = ValueNotifier<bool>(false);
  WidgetBase get activeIconVal {
    if (params[activeIconKey] != null) {
      return widgetRender(widgetContext, params[activeIconKey]);
    }
    return null;
  }

  void activeIconValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'B8QNdyibY_y';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = '8j48ds74uG2';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'z7sliNks-to';
    }
    params[activeIconKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return BottomNavigationBarItem(
      activeIcon: !widgetContext.isDragging ||
              (widgetContext.isDragging &&
                  activeIconVal?.build(context) != null)
          ? (activeIconVal?.build(context))
          : PreferredSize(
              preferredSize: Size(35.0, 35.0),
              child: DragTarget<WidgetBaseData>(
                onAccept: (val) {
                  _activeIconListen.value = false;
                  if (val != null) {
                    activeIconValUpdate(val?.data);
                  }
                },
                onLeave: (val) {
                  _activeIconListen.value = false;
                },
                onWillAccept: (val) {
                  _activeIconListen.value = true;
                  return _activeIconListen.value;
                },
                builder: (context, accepted, rejected) {
                  return ValueListenableBuilder<bool>(
                      valueListenable: _activeIconListen,
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
      icon: !widgetContext.isDragging ||
              (widgetContext.isDragging && iconVal?.build(context) != null)
          ? (iconVal?.build(context) ??
              (widgetRender(
                  widgetContext,
                  json.decode(json.encode({
                    'id': 'qkzwycKNvNp',
                    'name': 'Placeholder',
                    'params': {},
                  })))).build(context))
          : PreferredSize(
              preferredSize: Size(35.0, 35.0),
              child: DragTarget<WidgetBaseData>(
                onAccept: (val) {
                  _iconListen.value = false;
                  if (val != null) {
                    iconValUpdate(val?.data);
                  }
                },
                onLeave: (val) {
                  _iconListen.value = false;
                },
                onWillAccept: (val) {
                  _iconListen.value = true;
                  return _iconListen.value;
                },
                builder: (context, accepted, rejected) {
                  return ValueListenableBuilder<bool>(
                      valueListenable: _iconListen,
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
      title: !widgetContext.isDragging ||
              (widgetContext.isDragging && titleVal?.build(context) != null)
          ? (titleVal?.build(context) ??
              (widgetRender(
                  widgetContext,
                  json.decode(json.encode({
                    'id': 'NZsevuNwUjn',
                    'name': 'Placeholder',
                    'params': {},
                  })))).build(context))
          : PreferredSize(
              preferredSize: Size(60.0, 35.0),
              child: DragTarget<WidgetBaseData>(
                onAccept: (val) {
                  _titleListen.value = false;
                  if (val != null) {
                    titleValUpdate(val?.data);
                  }
                },
                onLeave: (val) {
                  _titleListen.value = false;
                },
                onWillAccept: (val) {
                  _titleListen.value = true;
                  return _titleListen.value;
                },
                builder: (context, accepted, rejected) {
                  return ValueListenableBuilder<bool>(
                      valueListenable: _titleListen,
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
    );
  }
}
