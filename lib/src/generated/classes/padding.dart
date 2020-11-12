import '../base.dart';

class PaddingBase extends BaseWidget {
    PaddingBase();

    factory PaddingBase.fromJson(Map<String, dynamic> data) {
        return PaddingBase();
    }

    @override
    String get description => r"""
A widget that insets its child by the given padding.

{@youtube 560 315 https://www.youtube.com/watch?v=oD5RtLhhubg}

When passing layout constraints to its child, padding shrinks the
constraints by the given padding, causing the child to layout at a smaller
size. Padding then sizes itself to its child's size, inflated by the
padding, effectively creating empty space around the child.

{@tool snippet}

This snippet creates "Hello World!" [Text] inside a [Card] that is indented
by sixteen pixels in each direction.

![](https://flutter.github.io/assets-for-api-docs/assets/widgets/padding.png)

```dart
const Card(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Text('Hello World!'),
  ),
)
```
{@end-tool}

## Design discussion

### Why use a [Padding] widget rather than a [Container] with a [Container.padding] property?

There isn't really any difference between the two. If you supply a
[Container.padding] argument, [Container] simply builds a [Padding] widget
for you.

[Container] doesn't implement its properties directly. Instead, [Container]
combines a number of simpler widgets together into a convenient package. For
example, the [Container.padding] property causes the container to build a
[Padding] widget and the [Container.decoration] property causes the
container to build a [DecoratedBox] widget. If you find [Container]
convenient, feel free to use it. If not, feel free to build these simpler
widgets in whatever combination meets your needs.

In fact, the majority of widgets in Flutter are simply combinations of other
simpler widgets. Composition, rather than inheritance, is the primary
mechanism for building up widgets.

See also:

 * [AnimatedPadding], which animates changes in [padding] over a given
   duration.
 * [EdgeInsets], the class that is used to describe the padding dimensions.
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