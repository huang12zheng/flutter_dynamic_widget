// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$ThemeBase extends WidgetBase {
  String keyKey = 'key';
  String dataKey = 'data';
  String childKey = 'child';
  String isMaterialAppThemeKey = 'isMaterialAppTheme';

  @override
  Map<String, String> get properties => {
        'key': 'Key',
        'data': 'ThemeDataBase',
        'child': 'Widget',
        'isMaterialAppTheme': 'bool',
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

  ThemeDataBase get dataVal {
    if (params[dataKey] != null) {
      return ThemeDataBase(params[dataKey], widgetContext);
    }
    return null;
  }

  set dataVal(ThemeDataBase val) {
    params[dataKey] = val;
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
    _data['id'] = 'rYykKQEfm';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'vK57jG3pRp';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'NRWvBRcpKe';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get isMaterialAppThemeVal {
    if (params[isMaterialAppThemeKey] != null) {
      return params[isMaterialAppThemeKey] as bool;
    }
    return false;
  }

  set isMaterialAppThemeVal(bool val) {
    params[isMaterialAppThemeKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Theme(
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context) ??
                (widgetRender(json.decode(json.encode({
                  'id': '24R5IsGC3F',
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
        data: dataVal?.build(context),
        isMaterialAppTheme: isMaterialAppThemeVal,
        key: keyVal,
      ),
    );
  }
}
