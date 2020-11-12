import '../base.dart';

class CustomPaintBase extends BaseWidget {
    CustomPaintBase();

    factory CustomPaintBase.fromJson(Map<String, dynamic> data) {
        return CustomPaintBase();
    }

    @override
    String get description => r"""
A widget that provides a canvas on which to draw during the paint phase.

When asked to paint, [CustomPaint] first asks its [painter] to paint on the
current canvas, then it paints its child, and then, after painting its
child, it asks its [foregroundPainter] to paint. The coordinate system of the
canvas matches the coordinate system of the [CustomPaint] object. The
painters are expected to paint within a rectangle starting at the origin and
encompassing a region of the given size. (If the painters paint outside
those bounds, there might be insufficient memory allocated to rasterize the
painting commands and the resulting behavior is undefined.) To enforce
painting within those bounds, consider wrapping this [CustomPaint] with a
[ClipRect] widget.

Painters are implemented by subclassing [CustomPainter].

{@youtube 560 315 https://www.youtube.com/watch?v=kp14Y4uHpHs}

Because custom paint calls its painters during paint, you cannot call
`setState` or `markNeedsLayout` during the callback (the layout for this
frame has already happened).

Custom painters normally size themselves to their child. If they do not have
a child, they attempt to size themselves to the [size], which defaults to
[Size.zero]. [size] must not be null.

[isComplex] and [willChange] are hints to the compositor's raster cache
and must not be null.

{@tool snippet}

This example shows how the sample custom painter shown at [CustomPainter]
could be used in a [CustomPaint] widget to display a background to some
text.

```dart
CustomPaint(
  painter: Sky(),
  child: Center(
    child: Text(
      'Once upon a time...',
      style: const TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w900,
        color: Color(0xFFFFFFFF),
      ),
    ),
  ),
)
```
{@end-tool}

See also:

 * [CustomPainter], the class to extend when creating custom painters.
 * [Canvas], the class that a custom painter uses to paint.
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