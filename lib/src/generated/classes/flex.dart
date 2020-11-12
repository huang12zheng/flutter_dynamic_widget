import '../base.dart';

class FlexBase extends BaseWidget {
    FlexBase();

    factory FlexBase.fromJson(Map<String, dynamic> data) {
        return FlexBase();
    }

    @override
    String get description => r"""
A widget that displays its children in a one-dimensional array.

The [Flex] widget allows you to control the axis along which the children are
placed (horizontal or vertical). This is referred to as the _main axis_. If
you know the main axis in advance, then consider using a [Row] (if it's
horizontal) or [Column] (if it's vertical) instead, because that will be less
verbose.

To cause a child to expand to fill the available space in the [direction]
of this widget's main axis, wrap the child in an [Expanded] widget.

The [Flex] widget does not scroll (and in general it is considered an error
to have more children in a [Flex] than will fit in the available room). If
you have some widgets and want them to be able to scroll if there is
insufficient room, consider using a [ListView].

If you only have one child, then rather than using [Flex], [Row], or
[Column], consider using [Align] or [Center] to position the child.

## Layout algorithm

_This section describes how a [Flex] is rendered by the framework._
_See [BoxConstraints] for an introduction to box layout models._

Layout for a [Flex] proceeds in six steps:

1. Layout each child a null or zero flex factor (e.g., those that are not
   [Expanded]) with unbounded main axis constraints and the incoming
   cross axis constraints. If the [crossAxisAlignment] is
   [CrossAxisAlignment.stretch], instead use tight cross axis constraints
   that match the incoming max extent in the cross axis.
2. Divide the remaining main axis space among the children with non-zero
   flex factors (e.g., those that are [Expanded]) according to their flex
   factor. For example, a child with a flex factor of 2.0 will receive twice
   the amount of main axis space as a child with a flex factor of 1.0.
3. Layout each of the remaining children with the same cross axis
   constraints as in step 1, but instead of using unbounded main axis
   constraints, use max axis constraints based on the amount of space
   allocated in step 2. Children with [Flexible.fit] properties that are
   [FlexFit.tight] are given tight constraints (i.e., forced to fill the
   allocated space), and children with [Flexible.fit] properties that are
   [FlexFit.loose] are given loose constraints (i.e., not forced to fill the
   allocated space).
4. The cross axis extent of the [Flex] is the maximum cross axis extent of
   the children (which will always satisfy the incoming constraints).
5. The main axis extent of the [Flex] is determined by the [mainAxisSize]
   property. If the [mainAxisSize] property is [MainAxisSize.max], then the
   main axis extent of the [Flex] is the max extent of the incoming main
   axis constraints. If the [mainAxisSize] property is [MainAxisSize.min],
   then the main axis extent of the [Flex] is the sum of the main axis
   extents of the children (subject to the incoming constraints).
6. Determine the position for each child according to the
   [mainAxisAlignment] and the [crossAxisAlignment]. For example, if the
   [mainAxisAlignment] is [MainAxisAlignment.spaceBetween], any main axis
   space that has not been allocated to children is divided evenly and
   placed between the children.

See also:

 * [Row], for a version of this widget that is always horizontal.
 * [Column], for a version of this widget that is always vertical.
 * [Expanded], to indicate children that should take all the remaining room.
 * [Flexible], to indicate children that should share the remaining room.
 * [Spacer], a widget that takes up space proportional to its flex value.
   that may be sized smaller (leaving some remaining room unused).
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