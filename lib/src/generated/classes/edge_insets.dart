import '../base.dart';

class EdgeInsetsBase extends BaseWidget {
    EdgeInsetsBase();

    factory EdgeInsetsBase.fromJson(Map<String, dynamic> data) {
        return EdgeInsetsBase();
    }

    @override
    String get description => r"""
An immutable set of offsets in each of the four cardinal directions.

Typically used for an offset from each of the four sides of a box. For
example, the padding inside a box can be represented using this class.

The [EdgeInsets] class specifies offsets in terms of visual edges, left,
top, right, and bottom. These values are not affected by the
[TextDirection]. To support both left-to-right and right-to-left layouts,
consider using [EdgeInsetsDirectional], which is expressed in terms of
_start_, top, _end_, and bottom, where start and end are resolved in terms
of a [TextDirection] (typically obtained from the ambient [Directionality]).

{@tool snippet}

Here are some examples of how to create [EdgeInsets] instances:

Typical eight-pixel margin on all sides:

```dart
const EdgeInsets.all(8.0)
```
{@end-tool}
{@tool snippet}

Eight pixel margin above and below, no horizontal margins:

```dart
const EdgeInsets.symmetric(vertical: 8.0)
```
{@end-tool}
{@tool snippet}

Left margin indent of 40 pixels:

```dart
const EdgeInsets.only(left: 40.0)
```
{@end-tool}

See also:

 * [Padding], a widget that accepts [EdgeInsets] to describe its margins.
 * [EdgeInsetsDirectional], which (for properties and arguments that accept
   the type [EdgeInsetsGeometry]) allows the horizontal insets to be
   specified in a [TextDirection]-aware manner.
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