import '../base.dart';

class AnimatedCrossFadeBase extends BaseWidget {
    AnimatedCrossFadeBase();

    factory AnimatedCrossFadeBase.fromJson(Map<String, dynamic> data) {
        return AnimatedCrossFadeBase();
    }

    @override
    String get description => r"""
A widget that cross-fades between two given children and animates itself
between their sizes.

{@youtube 560 315 https://www.youtube.com/watch?v=PGK2UUAyE54}

The animation is controlled through the [crossFadeState] parameter.
[firstCurve] and [secondCurve] represent the opacity curves of the two
children. The [firstCurve] is inverted, i.e. it fades out when providing a
growing curve like [Curves.linear]. The [sizeCurve] is the curve used to
animate between the size of the fading-out child and the size of the
fading-in child.

This widget is intended to be used to fade a pair of widgets with the same
width. In the case where the two children have different heights, the
animation crops overflowing children during the animation by aligning their
top edge, which means that the bottom will be clipped.

The animation is automatically triggered when an existing
[AnimatedCrossFade] is rebuilt with a different value for the
[crossFadeState] property.

{@tool snippet}

This code fades between two representations of the Flutter logo. It depends
on a boolean field `_first`; when `_first` is true, the first logo is shown,
otherwise the second logo is shown. When the field changes state, the
[AnimatedCrossFade] widget cross-fades between the two forms of the logo
over three seconds.

```dart
AnimatedCrossFade(
  duration: const Duration(seconds: 3),
  firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
  secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
  crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
)
```
{@end-tool}

See also:

 * [AnimatedOpacity], which fades between nothing and a single child.
 * [AnimatedSwitcher], which switches out a child for a new one with a
   customizable transition, supporting multiple cross-fades at once.
 * [AnimatedSize], the lower-level widget which [AnimatedCrossFade] uses to
   automatically change size.
""";

    @override
    Map<String, dynamic> toJson() {
        return {};
    }

    @override
    Widget render(BuildContext context) {
        return Container();
    }
}