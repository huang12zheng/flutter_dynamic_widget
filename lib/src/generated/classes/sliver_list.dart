import '../base.dart';

class SliverListBase extends BaseWidget {
    SliverListBase();

    factory SliverListBase.fromJson(Map<String, dynamic> data) {
        return SliverListBase();
    }

    @override
    String get description => r"""
A sliver that places multiple box children in a linear array along the main
axis.

Each child is forced to have the [SliverConstraints.crossAxisExtent] in the
cross axis but determines its own main axis extent.

[SliverList] determines its scroll offset by "dead reckoning" because
children outside the visible part of the sliver are not materialized, which
means [SliverList] cannot learn their main axis extent. Instead, newly
materialized children are placed adjacent to existing children.

{@youtube 560 315 https://www.youtube.com/watch?v=ORiTTaVY6mM}

If the children have a fixed extent in the main axis, consider using
[SliverFixedExtentList] rather than [SliverList] because
[SliverFixedExtentList] does not need to perform layout on its children to
obtain their extent in the main axis and is therefore more efficient.

{@macro flutter.widgets.sliverChildDelegate.lifecycle}

See also:

 * <https://flutter.dev/docs/development/ui/advanced/slivers>, a description
   of what slivers are and how to use them.
 * [SliverFixedExtentList], which is more efficient for children with
   the same extent in the main axis.
 * [SliverPrototypeExtentList], which is similar to [SliverFixedExtentList]
   except that it uses a prototype list item instead of a pixel value to define
   the main axis extent of each item.
 * [SliverGrid], which places its children in arbitrary positions.
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