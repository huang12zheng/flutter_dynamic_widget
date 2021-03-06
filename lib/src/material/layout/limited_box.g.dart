// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_box.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$LimitedBoxBase extends WidgetBase {
  String keyKey = 'key';
  String childKey = 'child';
  String maxWidthKey = 'maxWidth';
  String maxHeightKey = 'maxHeight';

  @override
  Map<String, String> get properties => {
        'key': 'Key',
        'child': 'Widget',
        'maxWidth': 'double',
        'maxHeight': 'double',
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
      return widgetRender(widgetContext, params[childKey]);
    }
    return null;
  }

  void childValUpdate(Map<String, dynamic> val) {
    final _data = val;
    _data['id'] = '2aY41kOhDXT';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'NHZPNyydlbj';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'fP6KZed7TiW';
    }
    params[childKey] = _data;
    widgetContext.onUpdate(id, widgetData);
  }

  double get maxWidthVal {
    if (params[maxWidthKey] != null) {
      return params[maxWidthKey] as double;
    }
    return double.infinity;
  }

  set maxWidthVal(double val) {
    params[maxWidthKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get maxHeightVal {
    if (params[maxHeightKey] != null) {
      return params[maxHeightKey] as double;
    }
    return double.infinity;
  }

  set maxHeightVal(double val) {
    params[maxHeightKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: LimitedBox(
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context) ??
                (widgetRender(
                    widgetContext,
                    json.decode(json.encode({
                      'id': 'JH4fWPCa16r',
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
        key: keyVal,
        maxHeight: maxHeightVal,
        maxWidth: maxWidthVal,
      ),
    );
  }
}
