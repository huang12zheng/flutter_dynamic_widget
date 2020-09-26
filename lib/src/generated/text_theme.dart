import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

class TextThemeRender<T> extends StatelessWidget {

  const TextThemeRender({
    this.headline1,
    this.headline2,
    this.headline3,
    this.headline4,
    this.headline5,
    this.headline6,
    this.subtitle1,
    this.subtitle2,
    this.bodyText1,
    this.bodyText2,
    this.caption,
    this.button,
    this.overline,
    this.display4,
    this.display3,
    this.display2,
    this.display1,
    this.headline,
    this.title,
    this.subhead,
    this.subtitle,
    this.body2,
    this.body1,
    this.widgetKey,
  });

  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle headline5;
  final TextStyle headline6;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle bodyText1;
  final TextStyle bodyText2;
  final TextStyle caption;
  final TextStyle button;
  final TextStyle overline;
  final TextStyle display4;
  final TextStyle display3;
  final TextStyle display2;
  final TextStyle display1;
  final TextStyle headline;
  final TextStyle title;
  final TextStyle subhead;
  final TextStyle subtitle;
  final TextStyle body2;
  final TextStyle body1;
  final Key widgetKey;

  Map<String, dynamic> get staticFields => {
  };

  @override
  String get description {
    final sb = StringBuffer();
    return sb.toString();
  }

  @override
  Map<String, Object> get constructors {
     return <String, Object>{
    'default': TextTheme(
       headline1: this.headline1,
       headline2: this.headline2,
       headline3: this.headline3,
       headline4: this.headline4,
       headline5: this.headline5,
       headline6: this.headline6,
       subtitle1: this.subtitle1,
       subtitle2: this.subtitle2,
       bodyText1: this.bodyText1,
       bodyText2: this.bodyText2,
       caption: this.caption,
       button: this.button,
       overline: this.overline,
       display4: this.display4,
       display3: this.display3,
       display2: this.display2,
       display1: this.display1,
       headline: this.headline,
       title: this.title,
       subhead: this.subhead,
       subtitle: this.subtitle,
       body2: this.body2,
       body1: this.body1,
    ),
    };
  }

  @override
  Widget build(BuildContext context) {
    if (isWidget) {
      return defaultBase;
    }
    return Container();
  }

  bool get isWidget => defaultBase is Widget;
  Object get defaultBase => constructors['default'];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
      properties.add(DiagnosticsProperty('headline1', this.headline1));
      properties.add(DiagnosticsProperty('headline2', this.headline2));
      properties.add(DiagnosticsProperty('headline3', this.headline3));
      properties.add(DiagnosticsProperty('headline4', this.headline4));
      properties.add(DiagnosticsProperty('headline5', this.headline5));
      properties.add(DiagnosticsProperty('headline6', this.headline6));
      properties.add(DiagnosticsProperty('subtitle1', this.subtitle1));
      properties.add(DiagnosticsProperty('subtitle2', this.subtitle2));
      properties.add(DiagnosticsProperty('bodyText1', this.bodyText1));
      properties.add(DiagnosticsProperty('bodyText2', this.bodyText2));
      properties.add(DiagnosticsProperty('caption', this.caption));
      properties.add(DiagnosticsProperty('button', this.button));
      properties.add(DiagnosticsProperty('overline', this.overline));
      properties.add(DiagnosticsProperty('display4', this.display4));
      properties.add(DiagnosticsProperty('display3', this.display3));
      properties.add(DiagnosticsProperty('display2', this.display2));
      properties.add(DiagnosticsProperty('display1', this.display1));
      properties.add(DiagnosticsProperty('headline', this.headline));
      properties.add(DiagnosticsProperty('title', this.title));
      properties.add(DiagnosticsProperty('subhead', this.subhead));
      properties.add(DiagnosticsProperty('subtitle', this.subtitle));
      properties.add(DiagnosticsProperty('body2', this.body2));
      properties.add(DiagnosticsProperty('body1', this.body1));
      properties.add(DiagnosticsProperty('widgetKey', this.widgetKey));
  }
}

