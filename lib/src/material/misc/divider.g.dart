// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$DividerBase extends WidgetBase {
  String colorKey = 'color';
  String endIndentKey = 'endIndent';
  String heightKey = 'height';
  String indentKey = 'indent';
  String keyKey = 'key';
  String thicknessKey = 'thickness';

  @override
  Map<String, String> get properties => {
        'color': 'Color',
        'endIndent': 'double',
        'height': 'double',
        'indent': 'double',
        'key': 'Key',
        'thickness': 'double',
      };

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

  double get endIndentVal {
    if (params[endIndentKey] != null) {
      return params[endIndentKey] as double;
    }
    return null;
  }

  set endIndentVal(double val) {
    params[endIndentKey] = val;
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

  double get indentVal {
    if (params[indentKey] != null) {
      return params[indentKey] as double;
    }
    return null;
  }

  set indentVal(double val) {
    params[indentKey] = val;
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

  double get thicknessVal {
    if (params[thicknessKey] != null) {
      return params[thicknessKey] as double;
    }
    return null;
  }

  set thicknessVal(double val) {
    params[thicknessKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Divider(
        color: colorVal,
        endIndent: endIndentVal,
        height: heightVal,
        indent: indentVal,
        key: keyVal,
        thickness: thicknessVal,
      ),
    );
  }
}
