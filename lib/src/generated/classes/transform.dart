import '../base.dart';

class TransformBase extends BaseWidget {
    TransformBase();

    factory TransformBase.fromJson(Map<String, dynamic> data) {
        return TransformBase();
    }

    @override
    String get description => r"""
A widget that applies a transformation before painting its child.

Unlike [RotatedBox], which applies a rotation prior to layout, this object
applies its transformation just prior to painting, which means the
transformation is not taken into account when calculating how much space
this widget's child (and thus this widget) consumes.

{@youtube 560 315 https://www.youtube.com/watch?v=9z_YNlRlWfA}

{@tool snippet}

This example rotates and skews an orange box containing text, keeping the
top right corner pinned to its original position.

```dart
Container(
  color: Colors.black,
  child: Transform(
    alignment: Alignment.topRight,
    transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
    child: Container(
      padding: const EdgeInsets.all(8.0),
      color: const Color(0xFFE8581C),
      child: const Text('Apartment for rent!'),
    ),
  ),
)
```
{@end-tool}

See also:

 * [RotatedBox], which rotates the child widget during layout, not just
   during painting.
 * [FractionalTranslation], which applies a translation to the child
   that is relative to the child's size.
 * [FittedBox], which sizes and positions its child widget to fit the parent
   according to a given [BoxFit] discipline.
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