import '../base.dart';

class ConstrainedBoxBase extends BaseWidget {
    ConstrainedBoxBase();

    factory ConstrainedBoxBase.fromJson(Map<String, dynamic> data) {
        return ConstrainedBoxBase();
    }

    @override
    String get description => r"""
A widget that imposes additional constraints on its child.

For example, if you wanted [child] to have a minimum height of 50.0 logical
pixels, you could use `const BoxConstraints(minHeight: 50.0)` as the
[constraints].

{@youtube 560 315 https://www.youtube.com/watch?v=o2KveVr7adg}

{@tool snippet}

This snippet makes the child widget (a [Card] with some [Text]) fill the
parent, by applying [BoxConstraints.expand] constraints:

```dart
ConstrainedBox(
  constraints: const BoxConstraints.expand(),
  child: const Card(child: Text('Hello World!')),
)
```
{@end-tool}

The same behavior can be obtained using the [new SizedBox.expand] widget.

See also:

 * [BoxConstraints], the class that describes constraints.
 * [UnconstrainedBox], a container that tries to let its child draw without
   constraints.
 * [SizedBox], which lets you specify tight constraints by explicitly
   specifying the height or width.
 * [FractionallySizedBox], which sizes its child based on a fraction of its
   own size and positions the child according to an [Alignment] value.
 * [AspectRatio], a widget that attempts to fit within the parent's
   constraints while also sizing its child to match a given aspect ratio.
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