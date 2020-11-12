import '../base.dart';

class ContainerBase extends BaseWidget {
    ContainerBase();

    factory ContainerBase.fromJson(Map<String, dynamic> data) {
        return ContainerBase();
    }

    @override
    String get description => r"""
A convenience widget that combines common painting, positioning, and sizing
widgets.

{@youtube 560 315 https://www.youtube.com/watch?v=c1xLMaTUWCY}

A container first surrounds the child with [padding] (inflated by any
borders present in the [decoration]) and then applies additional
[constraints] to the padded extent (incorporating the `width` and `height`
as constraints, if either is non-null). The container is then surrounded by
additional empty space described from the [margin].

During painting, the container first applies the given [transform], then
paints the [decoration] to fill the padded extent, then it paints the child,
and finally paints the [foregroundDecoration], also filling the padded
extent.

Containers with no children try to be as big as possible unless the incoming
constraints are unbounded, in which case they try to be as small as
possible. Containers with children size themselves to their children. The
`width`, `height`, and [constraints] arguments to the constructor override
this.

By default, containers return false for all hit tests. If the [color]
property is specified, the hit testing is handled by [ColoredBox], which
always returns true. If the [decoration] or [foregroundDecoration] properties
are specified, hit testing is handled by [Decoration.hitTest].

## Layout behavior

_See [BoxConstraints] for an introduction to box layout models._

Since [Container] combines a number of other widgets each with their own
layout behavior, [Container]'s layout behavior is somewhat complicated.

Summary: [Container] tries, in order: to honor [alignment], to size itself
to the [child], to honor the `width`, `height`, and [constraints], to expand
to fit the parent, to be as small as possible.

More specifically:

If the widget has no child, no `height`, no `width`, no [constraints],
and the parent provides unbounded constraints, then [Container] tries to
size as small as possible.

If the widget has no child and no [alignment], but a `height`, `width`, or
[constraints] are provided, then the [Container] tries to be as small as
possible given the combination of those constraints and the parent's
constraints.

If the widget has no child, no `height`, no `width`, no [constraints], and
no [alignment], but the parent provides bounded constraints, then
[Container] expands to fit the constraints provided by the parent.

If the widget has an [alignment], and the parent provides unbounded
constraints, then the [Container] tries to size itself around the child.

If the widget has an [alignment], and the parent provides bounded
constraints, then the [Container] tries to expand to fit the parent, and
then positions the child within itself as per the [alignment].

Otherwise, the widget has a [child] but no `height`, no `width`, no
[constraints], and no [alignment], and the [Container] passes the
constraints from the parent to the child and sizes itself to match the
child.

The [margin] and [padding] properties also affect the layout, as described
in the documentation for those properties. (Their effects merely augment the
rules described above.) The [decoration] can implicitly increase the
[padding] (e.g. borders in a [BoxDecoration] contribute to the [padding]);
see [Decoration.padding].

## Example

{@tool snippet}
This example shows a 48x48 amber square (placed inside a [Center] widget in
case the parent widget has its own opinions regarding the size that the
[Container] should take), with a margin so that it stays away from
neighboring widgets:

![An amber colored container with the dimensions of 48 square pixels.](https://flutter.github.io/assets-for-api-docs/assets/widgets/container_a.png)

```dart
Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,
  ),
)
```
{@end-tool}

{@tool snippet}

This example shows how to use many of the features of [Container] at once.
The [constraints] are set to fit the font size plus ample headroom
vertically, while expanding horizontally to fit the parent. The [padding] is
used to make sure there is space between the contents and the text. The
[color] makes the box blue. The [alignment] causes the [child] to be
centered in the box. Finally, the [transform] applies a slight rotation to the
entire contraption to complete the effect.

![A blue rectangular container with 'Hello World' in the center, rotated
slightly in the z axis.](https://flutter.github.io/assets-for-api-docs/assets/widgets/container_b.png)

```dart
Container(
  constraints: BoxConstraints.expand(
    height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
  ),
  padding: const EdgeInsets.all(8.0),
  color: Colors.blue[600],
  alignment: Alignment.center,
  child: Text('Hello World',
    style: Theme.of(context)
        .textTheme
        .headline4
        .copyWith(color: Colors.white)),
  transform: Matrix4.rotationZ(0.1),
)
```
{@end-tool}

See also:

 * [AnimatedContainer], a variant that smoothly animates the properties when
   they change.
 * [Border], which has a sample which uses [Container] heavily.
 * [Ink], which paints a [Decoration] on a [Material], allowing
   [InkResponse] and [InkWell] splashes to paint over them.
 * Cookbook: [Animate the properties of a container](https://flutter.dev/docs/cookbook/animation/animated-container)
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