import '../base.dart';

class RenderSliverFillRemainingAndOverscrollBase extends BaseWidget {
    RenderSliverFillRemainingAndOverscrollBase();

    factory RenderSliverFillRemainingAndOverscrollBase.fromJson(Map<String, dynamic> data) {
        return RenderSliverFillRemainingAndOverscrollBase();
    }

    @override
    String get description => r"""
A sliver that contains a single box child that is non-scrollable and fills
the remaining space in the viewport including any overscrolled area.

[RenderSliverFillRemainingAndOverscroll] sizes its child to fill the
viewport in the cross axis and to fill the remaining space in the viewport
in the main axis with the overscroll area included.

Typically this will be the last sliver in a viewport, since (by definition)
there is never any room for anything beyond this sliver.

See also:

 * [RenderSliverFillRemainingWithScrollable], which lays out its scrollable
   child without overscroll.
 * [RenderSliverFillRemaining], which lays out its
   non-scrollable child without overscroll.
 * [RenderSliverFillViewport], which sizes its children based on the
   size of the viewport, regardless of what else is in the scroll view.
 * [RenderSliverList], which shows a list of variable-sized children in a
   viewport.
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