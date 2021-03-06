// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_network.dart';

// **************************************************************************
// WidgetGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, avoid_init_to_null

abstract class _$ImageNetworkBase extends WidgetBase {
  String cacheHeightKey = 'cacheHeight';
  String cacheWidthKey = 'cacheWidth';
  String colorKey = 'color';
  String heightKey = 'height';
  String keyKey = 'key';
  String semanticLabelKey = 'semanticLabel';
  String widthKey = 'width';
  String srcKey = '0';
  String scaleKey = 'scale';
  String excludeFromSemanticsKey = 'excludeFromSemantics';
  String alignmentKey = 'alignment';
  String repeatKey = 'repeat';
  String matchTextDirectionKey = 'matchTextDirection';
  String gaplessPlaybackKey = 'gaplessPlayback';
  String filterQualityKey = 'filterQuality';
  String isAntiAliasKey = 'isAntiAlias';

  @override
  Map<String, String> get properties => {
        'cacheHeight': 'int',
        'cacheWidth': 'int',
        'color': 'Color',
        'height': 'double',
        'key': 'Key',
        'semanticLabel': 'String',
        'width': 'double',
        '0': 'String',
        'scale': 'double',
        'excludeFromSemantics': 'bool',
        'alignment': 'Alignment',
        'repeat': 'ImageRepeat',
        'matchTextDirection': 'bool',
        'gaplessPlayback': 'bool',
        'filterQuality': 'FilterQuality',
        'isAntiAlias': 'bool',
      };

  int get cacheHeightVal {
    if (params[cacheHeightKey] != null) {
      return params[cacheHeightKey] as int;
    }
    return null;
  }

  set cacheHeightVal(int val) {
    params[cacheHeightKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  int get cacheWidthVal {
    if (params[cacheWidthKey] != null) {
      return params[cacheWidthKey] as int;
    }
    return null;
  }

  set cacheWidthVal(int val) {
    params[cacheWidthKey] = val;
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

  String get srcVal {
    if (params[srcKey] != null) {
      return params[srcKey] as String;
    }
    return 'https://placeholder.com/';
  }

  set srcVal(String val) {
    params[srcKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  double get scaleVal {
    if (params[scaleKey] != null) {
      return params[scaleKey] as double;
    }
    return 1.0;
  }

  set scaleVal(double val) {
    params[scaleKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get excludeFromSemanticsVal {
    if (params[excludeFromSemanticsKey] != null) {
      return params[excludeFromSemanticsKey] as bool;
    }
    return false;
  }

  set excludeFromSemanticsVal(bool val) {
    params[excludeFromSemanticsKey] = val;
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

  List<ImageRepeat> get repeatValues => [
        ImageRepeat.noRepeat,
        ImageRepeat.repeat,
        ImageRepeat.repeatX,
        ImageRepeat.repeatY,
      ];

  ImageRepeat get repeatVal {
    if (params[repeatKey] != null) {
      final _value = params[repeatKey].toString().replaceAll('#', '');
      return repeatValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => ImageRepeat.noRepeat,
      );
    }
    return ImageRepeat.noRepeat;
  }

  set repeatVal(ImageRepeat val) {
    params[repeatKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  bool get matchTextDirectionVal {
    if (params[matchTextDirectionKey] != null) {
      return params[matchTextDirectionKey] as bool;
    }
    return false;
  }

  set matchTextDirectionVal(bool val) {
    params[matchTextDirectionKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  bool get gaplessPlaybackVal {
    if (params[gaplessPlaybackKey] != null) {
      return params[gaplessPlaybackKey] as bool;
    }
    return false;
  }

  set gaplessPlaybackVal(bool val) {
    params[gaplessPlaybackKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  List<FilterQuality> get filterQualityValues => [
        FilterQuality.high,
        FilterQuality.low,
        FilterQuality.medium,
        FilterQuality.none,
      ];

  FilterQuality get filterQualityVal {
    if (params[filterQualityKey] != null) {
      final _value = params[filterQualityKey].toString().replaceAll('#', '');
      return filterQualityValues.firstWhere(
        (element) => element.toString() == _value,
        orElse: () => FilterQuality.low,
      );
    }
    return FilterQuality.low;
  }

  set filterQualityVal(FilterQuality val) {
    params[filterQualityKey] = "$val";
    widgetContext.onUpdate(id, widgetData);
  }

  bool get isAntiAliasVal {
    if (params[isAntiAliasKey] != null) {
      return params[isAntiAliasKey] as bool;
    }
    return false;
  }

  set isAntiAliasVal(bool val) {
    params[isAntiAliasKey] = val;
    widgetContext.onUpdate(id, widgetData);
  }

  @override
  Object build(BuildContext context) {
    return GestureDetector(
      onTap: () => widgetContext.onTap(id, widgetData),
      child: Image.network(
        srcVal,
        alignment: alignmentVal,
        cacheHeight: cacheHeightVal,
        cacheWidth: cacheWidthVal,
        color: colorVal,
        excludeFromSemantics: excludeFromSemanticsVal,
        filterQuality: filterQualityVal,
        gaplessPlayback: gaplessPlaybackVal,
        height: heightVal,
        isAntiAlias: isAntiAliasVal,
        key: keyVal,
        matchTextDirection: matchTextDirectionVal,
        repeat: repeatVal,
        scale: scaleVal,
        semanticLabel: semanticLabelVal,
        width: widthVal,
      ),
    );
  }
}
