// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaffold.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$ScaffoldBase extends WidgetBase {
  String backgroundColorKey = 'backgroundColor';
  String bottomSheetKey = 'bottomSheet';
  String drawerKey = 'drawer';
  String drawerEdgeDragWidthKey = 'drawerEdgeDragWidth';
  String drawerScrimColorKey = 'drawerScrimColor';
  String endDrawerKey = 'endDrawer';
  String keyKey = 'key';
  String resizeToAvoidBottomInsetKey = 'resizeToAvoidBottomInset';
  String resizeToAvoidBottomPaddingKey = 'resizeToAvoidBottomPadding';
  String appBarKey = 'appBar';
  String bodyKey = 'body';
  String bottomNavigationBarKey = 'bottomNavigationBar';
  String floatingActionButtonKey = 'floatingActionButton';
  String persistentFooterButtonsKey = 'persistentFooterButtons';
  String floatingActionButtonLocationKey = 'floatingActionButtonLocation';
  String primaryKey = 'primary';
  String drawerDragStartBehaviorKey = 'drawerDragStartBehavior';
  String extendBodyKey = 'extendBody';
  String extendBodyBehindAppBarKey = 'extendBodyBehindAppBar';
  String drawerEnableOpenDragGestureKey = 'drawerEnableOpenDragGesture';
  String endDrawerEnableOpenDragGestureKey = 'endDrawerEnableOpenDragGesture';

  @override
  Map<String, String> get properties => {
        'backgroundColor': 'Color',
        'bottomSheet': 'Widget',
        'drawer': 'Widget',
        'drawerEdgeDragWidth': 'double',
        'drawerScrimColor': 'Color',
        'endDrawer': 'Widget',
        'key': 'Key',
        'resizeToAvoidBottomInset': 'bool',
        'resizeToAvoidBottomPadding': 'bool',
        'appBar': 'Widget',
        'body': 'Widget',
        'bottomNavigationBar': 'Widget',
        'floatingActionButton': 'Widget',
        'persistentFooterButtons': 'List<Widget>',
        'floatingActionButtonLocation': 'FloatingActionButtonLocation',
        'primary': 'bool',
        'drawerDragStartBehavior': 'DragStartBehavior',
        'extendBody': 'bool',
        'extendBodyBehindAppBar': 'bool',
        'drawerEnableOpenDragGesture': 'bool',
        'endDrawerEnableOpenDragGesture': 'bool',
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

  WidgetBase get bottomSheetVal {
    if (params[bottomSheetKey] != null) {
      return widgetRender(widgetContext, params[bottomSheetKey]);
    }
    return null;
  }

  void bottomSheetValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'I4q6Uy7GEIh';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'J9azwBNjfuj';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'mDAfwi9XDIG';
    }
    params[bottomSheetKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  WidgetBase get drawerVal {
    if (params[drawerKey] != null) {
      return widgetRender(widgetContext, params[drawerKey]);
    }
    return null;
  }

  void drawerValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'JnFm7SiCEVm';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'B6AnOAwfHNr';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'dvF8QmLbTqI';
    }
    params[drawerKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  double get drawerEdgeDragWidthVal {
    if (params[drawerEdgeDragWidthKey] != null) {
      return params[drawerEdgeDragWidthKey] as double;
    }
    return null;
  }

  set drawerEdgeDragWidthVal(double val) {
    params[drawerEdgeDragWidthKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  Color get drawerScrimColorVal {
    if (params[drawerScrimColorKey] != null) {
      int _value = null;
      String description = params[drawerScrimColorKey].toString();
      if (description.startsWith('#')) {
        description = description.replaceAll('#Color(', '').replaceAll(')', '');
        _value = int.tryParse(description);
      } else if (params[drawerScrimColorKey] is Map) {
        if (params[drawerScrimColorKey]['name'] == 'Color' &&
            params[drawerScrimColorKey]['params'] != null &&
            params[drawerScrimColorKey]['params']['0'] != null) {
          _value = int.tryParse(params[drawerScrimColorKey]['params']['0']);
        }
      }
      if (_value != null) {
        return Color(_value);
      }
    }
    return null;
  }

  set drawerScrimColorVal(Color val) {
    params[drawerScrimColorKey] = "#Color(${val.value})";
    widgetContext.onUpdate(id, widgetData);
  }

  WidgetBase get endDrawerVal {
    if (params[endDrawerKey] != null) {
      return widgetRender(widgetContext, params[endDrawerKey]);
    }
    return null;
  }

  void endDrawerValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'L8al4s_rfdU';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'xwo6UUj2So3';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'P7IRlAouhZQ';
    }
    params[endDrawerKey] = _data;
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

  bool get resizeToAvoidBottomInsetVal {
    if (params[resizeToAvoidBottomInsetKey] != null) {
      return params[resizeToAvoidBottomInsetKey] as bool;
    }
    return null;
  }

  set resizeToAvoidBottomInsetVal(bool val) {
    params[resizeToAvoidBottomInsetKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get resizeToAvoidBottomPaddingVal {
    if (params[resizeToAvoidBottomPaddingKey] != null) {
      return params[resizeToAvoidBottomPaddingKey] as bool;
    }
    return null;
  }

  set resizeToAvoidBottomPaddingVal(bool val) {
    params[resizeToAvoidBottomPaddingKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  final _appBarListen = ValueNotifier<bool>(false);
  WidgetBase get appBarVal {
    if (params[appBarKey] != null) {
      return widgetRender(widgetContext, params[appBarKey]);
    }
    return null;
  }

  void appBarValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = '5_D946EWQsI';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'qd-32NGdeEJ';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'pCRE5Gul_7s';
    }
    params[appBarKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _bodyListen = ValueNotifier<bool>(false);
  WidgetBase get bodyVal {
    if (params[bodyKey] != null) {
      return widgetRender(widgetContext, params[bodyKey]);
    }
    return null;
  }

  void bodyValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'TKQcbQKNiGx';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'HbrlFiW7K2_';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = '_qrogDf43qS';
    }
    params[bodyKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _bottomNavigationBarListen = ValueNotifier<bool>(false);
  WidgetBase get bottomNavigationBarVal {
    if (params[bottomNavigationBarKey] != null) {
      return widgetRender(widgetContext, params[bottomNavigationBarKey]);
    }
    return null;
  }

  void bottomNavigationBarValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'eu6FStw9ufM';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'nl6Swcd5qVS';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'GVKxExlEfT9';
    }
    params[bottomNavigationBarKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _floatingActionButtonListen = ValueNotifier<bool>(false);
  WidgetBase get floatingActionButtonVal {
    if (params[floatingActionButtonKey] != null) {
      return widgetRender(widgetContext, params[floatingActionButtonKey]);
    }
    return null;
  }

  void floatingActionButtonValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = 'EBgUdYqIKas';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'bt3TZZvVVoC';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'hodnir3yYsn';
    }
    params[floatingActionButtonKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  final _persistentFooterButtonsListen = ValueNotifier<bool>(false);
  List<WidgetBase> get persistentFooterButtonsVal {
    if (params[persistentFooterButtonsKey] != null) {
      final _children = <WidgetBase>[];
      final _list = List.from(params[persistentFooterButtonsKey]);
      for (final item in _list) {
        if (item is Map<String, dynamic>) {
          _children.add(widgetRender(widgetContext, item));
        }
      }
      return _children;
    }
    return null;
  }

  void persistentFooterButtonsValUpdate(Map<String, dynamic> val) {
    if (params[persistentFooterButtonsKey] == null) {
      params[persistentFooterButtonsKey] = [];
    }
    params[persistentFooterButtonsKey].add(val);
    widgetContext.onUpdate(id, widgetData);
  }

  List<FloatingActionButtonLocation> get floatingActionButtonLocationValues => [
        FloatingActionButtonLocation.endDocked,
        FloatingActionButtonLocation.endFloat,
        FloatingActionButtonLocation.miniCenterDocked,
        FloatingActionButtonLocation.miniCenterFloat,
        FloatingActionButtonLocation.miniCenterTop,
        FloatingActionButtonLocation.miniEndDocked,
        FloatingActionButtonLocation.miniEndFloat,
        FloatingActionButtonLocation.miniEndTop,
        FloatingActionButtonLocation.miniStartDocked,
        FloatingActionButtonLocation.miniStartFloat,
        FloatingActionButtonLocation.miniStartTop,
        FloatingActionButtonLocation.startDocked,
        FloatingActionButtonLocation.startFloat,
        FloatingActionButtonLocation.startTop,
      ];

  FloatingActionButtonLocation get floatingActionButtonLocationVal {
    if (params[floatingActionButtonLocationKey] != null) {
      final _value = params[floatingActionButtonLocationKey]
          .toString()
          .replaceAll('#', '');
      return floatingActionButtonLocationValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => null,
      );
    }
    return null;
  }

  set floatingActionButtonLocationVal(FloatingActionButtonLocation val) {
    params[floatingActionButtonLocationKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  bool get primaryVal {
    if (params[primaryKey] != null) {
      return params[primaryKey] as bool;
    }
    return true;
  }

  set primaryVal(bool val) {
    params[primaryKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  List<DragStartBehavior> get drawerDragStartBehaviorValues => [
        DragStartBehavior.start,
        DragStartBehavior.down,
      ];

  DragStartBehavior get drawerDragStartBehaviorVal {
    if (params[drawerDragStartBehaviorKey] != null) {
      final _value =
          params[drawerDragStartBehaviorKey].toString().replaceAll('#', '');
      return drawerDragStartBehaviorValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => DragStartBehavior.start,
      );
    }
    return DragStartBehavior.start;
  }

  set drawerDragStartBehaviorVal(DragStartBehavior val) {
    params[drawerDragStartBehaviorKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  bool get extendBodyVal {
    if (params[extendBodyKey] != null) {
      return params[extendBodyKey] as bool;
    }
    return false;
  }

  set extendBodyVal(bool val) {
    params[extendBodyKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get extendBodyBehindAppBarVal {
    if (params[extendBodyBehindAppBarKey] != null) {
      return params[extendBodyBehindAppBarKey] as bool;
    }
    return false;
  }

  set extendBodyBehindAppBarVal(bool val) {
    params[extendBodyBehindAppBarKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get drawerEnableOpenDragGestureVal {
    if (params[drawerEnableOpenDragGestureKey] != null) {
      return params[drawerEnableOpenDragGestureKey] as bool;
    }
    return true;
  }

  set drawerEnableOpenDragGestureVal(bool val) {
    params[drawerEnableOpenDragGestureKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get endDrawerEnableOpenDragGestureVal {
    if (params[endDrawerEnableOpenDragGestureKey] != null) {
      return params[endDrawerEnableOpenDragGestureKey] as bool;
    }
    return true;
  }

  set endDrawerEnableOpenDragGestureVal(bool val) {
    params[endDrawerEnableOpenDragGestureKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Scaffold(
        appBar: !widgetContext.isDragging ||
                (widgetContext.isDragging && appBarVal?.build(context) != null)
            ? (appBarVal?.build(context))
            : PreferredSize(
                preferredSize: Size(100.0, 56.0),
                child: DragTarget<WidgetPreferredSizeBaseData>(
                  onAccept: (val) {
                    _appBarListen.value = false;
                    if (val != null) {
                      appBarValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _appBarListen.value = false;
                  },
                  onWillAccept: (val) {
                    _appBarListen.value = true;
                    return _appBarListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _appBarListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(100.0, 56.0),
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
        body: !widgetContext.isDragging ||
                (widgetContext.isDragging && bodyVal?.build(context) != null)
            ? (bodyVal?.build(context))
            : PreferredSize(
                preferredSize: Size(100.0, 100.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _bodyListen.value = false;
                    if (val != null) {
                      bodyValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _bodyListen.value = false;
                  },
                  onWillAccept: (val) {
                    _bodyListen.value = true;
                    return _bodyListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _bodyListen,
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
        bottomNavigationBar: !widgetContext.isDragging ||
                (widgetContext.isDragging &&
                    bottomNavigationBarVal?.build(context) != null)
            ? (bottomNavigationBarVal?.build(context))
            : PreferredSize(
                preferredSize: Size(100.0, 50.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _bottomNavigationBarListen.value = false;
                    if (val != null) {
                      bottomNavigationBarValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _bottomNavigationBarListen.value = false;
                  },
                  onWillAccept: (val) {
                    _bottomNavigationBarListen.value = true;
                    return _bottomNavigationBarListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _bottomNavigationBarListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(100.0, 50.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        bottomSheet: bottomSheetVal?.build(context),
        drawer: drawerVal?.build(context),
        drawerDragStartBehavior: drawerDragStartBehaviorVal,
        drawerEdgeDragWidth: drawerEdgeDragWidthVal,
        drawerEnableOpenDragGesture: drawerEnableOpenDragGestureVal,
        drawerScrimColor: drawerScrimColorVal,
        endDrawer: endDrawerVal?.build(context),
        endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGestureVal,
        extendBody: extendBodyVal,
        extendBodyBehindAppBar: extendBodyBehindAppBarVal,
        floatingActionButton: !widgetContext.isDragging ||
                (widgetContext.isDragging &&
                    floatingActionButtonVal?.build(context) != null)
            ? (floatingActionButtonVal?.build(context))
            : PreferredSize(
                preferredSize: Size(50.0, 50.0),
                child: DragTarget<WidgetBaseData>(
                  onAccept: (val) {
                    _floatingActionButtonListen.value = false;
                    if (val != null) {
                      floatingActionButtonValUpdate(val?.data);
                    }
                  },
                  onLeave: (val) {
                    _floatingActionButtonListen.value = false;
                  },
                  onWillAccept: (val) {
                    _floatingActionButtonListen.value = true;
                    return _floatingActionButtonListen.value;
                  },
                  builder: (context, accepted, rejected) {
                    return ValueListenableBuilder<bool>(
                        valueListenable: _floatingActionButtonListen,
                        builder: (context, _accepting, child) =>
                            SizedBox.fromSize(
                              size: Size(50.0, 50.0),
                              child: Placeholder(
                                color: !_accepting
                                    ? Colors.grey
                                    : Theme.of(context).accentColor,
                              ),
                            ));
                  },
                ),
              ),
        floatingActionButtonLocation: floatingActionButtonLocationVal,
        key: keyVal,
        persistentFooterButtons:
            persistentFooterButtonsVal == null && !widgetContext.isDragging
                ? null
                : [
                    if (persistentFooterButtonsVal != null)
                      for (final item in persistentFooterButtonsVal)
                        item.build(context),
                    if (widgetContext.isDragging)
                      DragTarget<WidgetBaseData>(
                        onAccept: (val) {
                          _persistentFooterButtonsListen.value = false;
                          if (val != null) {
                            persistentFooterButtonsValUpdate(val?.data);
                          }
                        },
                        onLeave: (val) {
                          _persistentFooterButtonsListen.value = false;
                        },
                        onWillAccept: (val) {
                          _persistentFooterButtonsListen.value = true;
                          return _persistentFooterButtonsListen.value;
                        },
                        builder: (context, accepted, rejected) {
                          return ValueListenableBuilder<bool>(
                              valueListenable: _persistentFooterButtonsListen,
                              builder: (context, _accepting, child) =>
                                  SizedBox.fromSize(
                                    size: Size(30, 30),
                                    child: Placeholder(
                                      color: !_accepting
                                          ? Colors.grey
                                          : Theme.of(context).accentColor,
                                    ),
                                  ));
                        },
                      ),
                  ],
        primary: primaryVal,
        resizeToAvoidBottomInset: resizeToAvoidBottomInsetVal,
        resizeToAvoidBottomPadding: resizeToAvoidBottomPaddingVal,
      ),
    );
  }
}
