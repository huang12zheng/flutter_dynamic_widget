import '../base.dart';

class InkBase extends BaseWidget {
    InkBase();

    factory InkBase.fromJson(Map<String, dynamic> data) {
        return InkBase();
    }

    @override
    String get description => r"""
A convenience widget for drawing images and other decorations on [Material]
widgets, so that [InkWell] and [InkResponse] splashes will render over them.

Ink splashes and highlights, as rendered by [InkWell] and [InkResponse],
draw on the actual underlying [Material], under whatever widgets are drawn
over the material (such as [Text] and [Icon]s). If an opaque image is drawn
over the [Material] (maybe using a [Container] or [DecoratedBox]), these ink
effects will not be visible, as they will be entirely obscured by the opaque
graphics drawn above the [Material].

This widget draws the given [Decoration] directly on the [Material], in the
same way that [InkWell] and [InkResponse] draw there. This allows the
splashes to be drawn above the otherwise opaque graphics.

An alternative solution is to use a [MaterialType.transparency] material
above the opaque graphics, so that the ink responses from [InkWell]s and
[InkResponse]s will be drawn on the transparent material on top of the
opaque graphics, rather than under the opaque graphics on the underlying
[Material].

## Limitations

This widget is subject to the same limitations as other ink effects, as
described in the documentation for [Material]. Most notably, the position of
an [Ink] widget must not change during the lifetime of the [Material] object
unless a [LayoutChangedNotification] is dispatched each frame that the
position changes. This is done automatically for [ListView] and other
scrolling widgets, but is not done for animated transitions such as
[SlideTransition].

Additionally, if multiple [Ink] widgets paint on the same [Material] in the
same location, their relative order is not guaranteed. The decorations will
be painted in the order that they were added to the material, which
generally speaking will match the order they are given in the widget tree,
but this order may appear to be somewhat random in more dynamic situations.

{@tool snippet}

This example shows how a [Material] widget can have a yellow rectangle drawn
on it using [Ink], while still having ink effects over the yellow rectangle:

```dart
Material(
  color: Colors.teal[900],
  child: Center(
    child: Ink(
      color: Colors.yellow,
      width: 200.0,
      height: 100.0,
      child: InkWell(
        onTap: () { /* ... */ },
        child: Center(
          child: Text('YELLOW'),
        )
      ),
    ),
  ),
)
```
{@end-tool}
{@tool snippet}

The following example shows how an image can be printed on a [Material]
widget with an [InkWell] above it:

```dart
Material(
  color: Colors.grey[800],
  child: Center(
    child: Ink.image(
      image: AssetImage('cat.jpeg'),
      fit: BoxFit.cover,
      width: 300.0,
      height: 200.0,
      child: InkWell(
        onTap: () { /* ... */ },
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('KITTEN', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white)),
          ),
        )
      ),
    ),
  ),
)
```
{@end-tool}

See also:

 * [Container], a more generic form of this widget which paints itself,
   rather that deferring to the nearest [Material] widget.
 * [InkDecoration], the [InkFeature] subclass used by this widget to paint
   on [Material] widgets.
 * [InkWell] and [InkResponse], which also draw on [Material] widgets.
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