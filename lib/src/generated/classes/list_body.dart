import '../base.dart';

class ListBodyBase extends BaseWidget {
    ListBodyBase();

    factory ListBodyBase.fromJson(Map<String, dynamic> data) {
        return ListBodyBase();
    }

    @override
    String get description => r"""
A widget that arranges its children sequentially along a given axis, forcing
them to the dimension of the parent in the other axis.

This widget is rarely used directly. Instead, consider using [ListView],
which combines a similar layout algorithm with scrolling behavior, or
[Column], which gives you more flexible control over the layout of a
vertical set of boxes.

See also:

 * [RenderListBody], which implements this layout algorithm and the
   documentation for which describes some of its subtleties.
 * [SingleChildScrollView], which is sometimes used with [ListBody] to
   make the contents scrollable.
 * [Column] and [Row], which implement a more elaborate version of
   this layout algorithm (at the cost of being slightly less efficient).
 * [ListView], which implements an efficient scrolling version of this
   layout algorithm.
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