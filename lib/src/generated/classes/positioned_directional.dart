import '../base.dart';

class PositionedDirectionalBase extends BaseWidget {
    PositionedDirectionalBase();

    factory PositionedDirectionalBase.fromJson(Map<String, dynamic> data) {
        return PositionedDirectionalBase();
    }

    @override
    String get description => r"""
A widget that controls where a child of a [Stack] is positioned without
committing to a specific [TextDirection].

The ambient [Directionality] is used to determine whether [start] is to the
left or to the right.

A [PositionedDirectional] widget must be a descendant of a [Stack], and the
path from the [PositionedDirectional] widget to its enclosing [Stack] must
contain only [StatelessWidget]s or [StatefulWidget]s (not other kinds of
widgets, like [RenderObjectWidget]s).

If a widget is wrapped in a [PositionedDirectional], then it is a
_positioned_ widget in its [Stack]. If the [top] property is non-null, the
top edge of this child/ will be positioned [top] layout units from the top
of the stack widget. The [start], [bottom], and [end] properties work
analogously.

If both the [top] and [bottom] properties are non-null, then the child will
be forced to have exactly the height required to satisfy both constraints.
Similarly, setting the [start] and [end] properties to non-null values will
force the child to have a particular width. Alternatively the [width] and
[height] properties can be used to give the dimensions, with one
corresponding position property (e.g. [top] and [height]).

See also:

 * [Positioned], which specifies the widget's position visually.
 * [Positioned.directional], which also specifies the widget's horizontal
   position using [start] and [end] but has an explicit [TextDirection].
 * [AnimatedPositionedDirectional], which automatically transitions
   the child's position over a given duration whenever the given position
   changes.
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