// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sized_overflow_box.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$SizedOverflowBoxBase extends WidgetBase {
  String keyKey = 'key';
  String childKey = 'child';
  String alignmentKey = 'alignment';
  String sizeKey = 'size';

  @override
  Map<String, String> get properties => {
        'key': 'Key',
        'child': 'Widget',
        'alignment': 'Alignment',
        'size': 'Size',
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
    _data['id'] = 'dJeEtuFxpG';
    if (_data['name'] == 'Text') {
      _data['params']['style']['id'] = 'Uf4s4ryE-n-';
    }
    if (_data['name'] == 'Icon') {
      _data['params']['0']['id'] = 'Rc-nZi_VHv9';
    }
    params[childKey] = _data;
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

  Size get sizeVal {
    Size _size = Size(0.0, 0.0);
    if (params[sizeKey] != null) {
      double width = 0;
      double height = 0;
      Map<String, dynamic> _sizeParams = params[sizeKey]['params'];
      width = _sizeParams['0'] ?? 0;
      height = _sizeParams['1'] ?? 0;
      _size = Size(width, height);
    }
    return _size;
  }

  set sizeVal(Size val) {
    params[sizeKey] = {
      "name": "Size",
      "id": "sizeKeySize",
      "params": {
        "0": val.width,
        "1": val.height,
      }
    };
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: SizedOverflowBox(
        alignment: alignmentVal,
        child: !widgetContext.isDragging ||
                (widgetContext.isDragging && childVal?.build(context) != null)
            ? (childVal?.build(context) ??
                (widgetRender(
                    widgetContext,
                    json.decode(json.encode({
                      'id': 'OrtQ9-grYah',
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
        size: sizeVal,
      ),
    );
  }
}
