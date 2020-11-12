import '../base.dart';

class RenderSliverFillRemainingBase extends BaseWidget {
    RenderSliverFillRemainingBase();

    factory RenderSliverFillRemainingBase.fromJson(Map<String, dynamic> data) {
        return RenderSliverFillRemainingBase();
    }

    @override
    String get description => r"""
A sliver that contains a single box child that is non-scrollable and fills
the remaining space in the viewport.

[RenderSliverFillRemaining] sizes its child to fill the
viewport in the cross axis and to fill the remaining space in the viewport
in the main axis.

Typically this will be the last sliver in a viewport, since (by definition)
there is never any room for anything beyond this sliver.

See also:

 * [RenderSliverFillRemainingWithScrollable], which lays out its scrollable
   child slightly different than this widget.
 * [RenderSliverFillRemainingAndOverscroll], which incorporates the
   overscroll into the remaining space to fill.
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