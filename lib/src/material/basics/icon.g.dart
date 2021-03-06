// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$IconBase extends WidgetBase {
  String colorKey = 'color';
  String semanticLabelKey = 'semanticLabel';
  String sizeKey = 'size';
  String iconDataKey = '0';
  String textDirectionKey = 'textDirection';

  @override
  Map<String, String> get properties => {
        'color': 'Color',
        'semanticLabel': 'String',
        'size': 'double',
        '0': 'IconDataBase',
        'textDirection': 'TextDirection',
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

  String get semanticLabelVal {
    if (params[semanticLabelKey] != null) {
      return params[semanticLabelKey] as String;
    }
    return null;
  }

  set semanticLabelVal(String val) {
    params[semanticLabelKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get sizeVal {
    if (params[sizeKey] != null) {
      return params[sizeKey] as double;
    }
    return null;
  }

  set sizeVal(double val) {
    params[sizeKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  IconDataBase get iconDataVal {
    if (params[iconDataKey] != null) {
      return IconDataBase(params[iconDataKey], widgetContext, widgetRender);
    }
    return null;
  }

  set iconDataVal(IconDataBase val) {
    params[iconDataKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  List<TextDirection> get textDirectionValues => [
        TextDirection.ltr,
        TextDirection.rtl,
      ];

  TextDirection get textDirectionVal {
    if (params[textDirectionKey] != null) {
      final _value = params[textDirectionKey].toString().replaceAll('#', '');
      return textDirectionValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => null,
      );
    }
    return null;
  }

  set textDirectionVal(TextDirection val) {
    params[textDirectionKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Icon(
        iconDataVal?.build(context),
        color: colorVal,
        semanticLabel: semanticLabelVal,
        size: sizeVal,
        textDirection: textDirectionVal,
      ),
    );
  }
}
