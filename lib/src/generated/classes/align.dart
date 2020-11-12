import '../base.dart';

class AlignBase extends BaseWidget {
    AlignBase();

    factory AlignBase.fromJson(Map<String, dynamic> data) {
        return AlignBase();
    }

    @override
    String get description => r"""
A widget that aligns its child within itself and optionally sizes itself
based on the child's size.

For example, to align a box at the bottom right, you would pass this box a
tight constraint that is bigger than the child's natural size,
with an alignment of [Alignment.bottomRight].

{@youtube 560 315 https://www.youtube.com/watch?v=g2E7yl3MwMk}

This widget will be as big as possible if its dimensions are constrained and
[widthFactor] and [heightFactor] are null. If a dimension is unconstrained
and the corresponding size factor is null then the widget will match its
child's size in that dimension. If a size factor is non-null then the
corresponding dimension of this widget will be the product of the child's
dimension and the size factor. For example if widthFactor is 2.0 then
the width of this widget will always be twice its child's width.

## How it works

The [alignment] property describes a point in the `child`'s coordinate system
and a different point in the coordinate system of this widget. The [Align]
widget positions the `child` such that both points are lined up on top of
each other.

{@tool snippet}
The [Align] widget in this example uses one of the defined constants from
[Alignment], [Alignment.topRight]. This places the [FlutterLogo] in the top
right corner of the parent blue [Container].

![A blue square container with the Flutter logo in the top right corner.](https://flutter.github.io/assets-for-api-docs/assets/widgets/align_constant.png)

```dart
Center(
  child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.blue[50],
    child: Align(
      alignment: Alignment.topRight,
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
)
```
{@end-tool}

{@tool snippet}
The [Alignment] used in the following example defines a single point:

  * (0.2 * width of [FlutterLogo]/2 + width of [FlutterLogo]/2, 0.6 * height
  of [FlutterLogo]/2 + height of [FlutterLogo]/2) = (36.0, 48.0).

The [Alignment] class uses a coordinate system with an origin in the center
of the [Container], as shown with the [Icon] above. [Align] will place the
[FlutterLogo] at (36.0, 48.0) according to this coordinate system.

![A blue square container with the Flutter logo positioned according to the
Alignment specified above. A point is marked at the center of the container
for the origin of the Alignment coordinate system.](https://flutter.github.io/assets-for-api-docs/assets/widgets/align_alignment.png)

```dart
Center(
  child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.blue[50],
    child: Align(
      alignment: Alignment(0.2, 0.6),
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
)
```
{@end-tool}

{@tool snippet}
The [FractionalOffset] used in the following example defines two points:

  * (0.2 * width of [FlutterLogo], 0.6 * height of [FlutterLogo]) = (12.0, 36.0)
    in the coordinate system of the blue container.
  * (0.2 * width of [Align], 0.6 * height of [Align]) = (24.0, 72.0) in the
    coordinate system of the [Align] widget.

The [Align] widget positions the [FlutterLogo] such that the two points are on
top of each other. In this example, the top left of the [FlutterLogo] will
be placed at (24.0, 72.0) - (12.0, 36.0) = (12.0, 36.0) from the top left of
the [Align] widget.

The [FractionalOffset] class uses a coordinate system with an origin in the top-left
corner of the [Container] in difference to the center-oriented system used in
the example above with [Alignment].

![A blue square container with the Flutter logo positioned according to the
FractionalOffset specified above. A point is marked at the top left corner
of the container for the origin of the FractionalOffset coordinate system.](https://flutter.github.io/assets-for-api-docs/assets/widgets/align_fractional_offset.png)

```dart
Center(
  child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.blue[50],
    child: Align(
      alignment: FractionalOffset(0.2, 0.6),
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
)
```
{@end-tool}

See also:

 * [AnimatedAlign], which animates changes in [alignment] smoothly over a
   given duration.
 * [CustomSingleChildLayout], which uses a delegate to control the layout of
   a single child.
 * [Center], which is the same as [Align] but with the [alignment] always
   set to [Alignment.center].
 * [FractionallySizedBox], which sizes its child based on a fraction of its
   own size and positions the child according to an [Alignment] value.
 * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).
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