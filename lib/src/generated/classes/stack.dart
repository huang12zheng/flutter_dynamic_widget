import '../base.dart';

class StackBase extends BaseWidget {
    StackBase();

    factory StackBase.fromJson(Map<String, dynamic> data) {
        return StackBase();
    }

    @override
    String get description => r"""
A widget that positions its children relative to the edges of its box.

This class is useful if you want to overlap several children in a simple
way, for example having some text and an image, overlaid with a gradient and
a button attached to the bottom.

{@youtube 560 315 https://www.youtube.com/watch?v=liEGSeD3Zt8}

Each child of a [Stack] widget is either _positioned_ or _non-positioned_.
Positioned children are those wrapped in a [Positioned] widget that has at
least one non-null property. The stack sizes itself to contain all the
non-positioned children, which are positioned according to [alignment]
(which defaults to the top-left corner in left-to-right environments and the
top-right corner in right-to-left environments). The positioned children are
then placed relative to the stack according to their top, right, bottom, and
left properties.

The stack paints its children in order with the first child being at the
bottom. If you want to change the order in which the children paint, you
can rebuild the stack with the children in the new order. If you reorder
the children in this way, consider giving the children non-null keys.
These keys will cause the framework to move the underlying objects for
the children to their new locations rather than recreate them at their
new location.

For more details about the stack layout algorithm, see [RenderStack].

If you want to lay a number of children out in a particular pattern, or if
you want to make a custom layout manager, you probably want to use
[CustomMultiChildLayout] instead. In particular, when using a [Stack] you
can't position children relative to their size or the stack's own size.

{@tool snippet}

Using a [Stack] you can position widgets over one another.

![The sample creates a blue box that overlaps a larger green box, which itself overlaps an even larger red box.](https://flutter.github.io/assets-for-api-docs/assets/widgets/stack.png)

```dart
Stack(
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 90,
      height: 90,
      color: Colors.green,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.blue,
    ),
  ],
)
```
{@end-tool}

{@tool snippet}

This example shows how [Stack] can be used to enhance text visibility
by adding gradient backdrops.

![The gradient fades from transparent to dark grey at the bottom, with white text on top of the darker portion.](https://flutter.github.io/assets-for-api-docs/assets/widgets/stack_with_gradient.png)

```dart
SizedBox(
  width: 250,
  height: 250,
  child: Stack(
    children: <Widget>[
      Container(
        width: 250,
        height: 250,
        color: Colors.white,
      ),
      Container(
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black.withAlpha(0),
              Colors.black12,
              Colors.black45
            ],
          ),
        ),
        child: Text(
          "Foreground Text",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    ],
  ),
)
```
{@end-tool}

See also:

 * [Align], which sizes itself based on its child's size and positions
   the child according to an [Alignment] value.
 * [CustomSingleChildLayout], which uses a delegate to control the layout of
   a single child.
 * [CustomMultiChildLayout], which uses a delegate to position multiple
   children.
 * [Flow], which provides paint-time control of its children using transform
   matrices.
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