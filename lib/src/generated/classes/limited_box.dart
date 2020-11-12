import '../base.dart';

class LimitedBoxBase extends BaseWidget {
    LimitedBoxBase();

    factory LimitedBoxBase.fromJson(Map<String, dynamic> data) {
        return LimitedBoxBase();
    }

    @override
    String get description => r"""
A box that limits its size only when it's unconstrained.

If this widget's maximum width is unconstrained then its child's width is
limited to [maxWidth]. Similarly, if this widget's maximum height is
unconstrained then its child's height is limited to [maxHeight].

This has the effect of giving the child a natural dimension in unbounded
environments. For example, by providing a [maxHeight] to a widget that
normally tries to be as big as possible, the widget will normally size
itself to fit its parent, but when placed in a vertical list, it will take
on the given height.

This is useful when composing widgets that normally try to match their
parents' size, so that they behave reasonably in lists (which are
unbounded).

{@youtube 560 315 https://www.youtube.com/watch?v=uVki2CIzBTs}

See also:

 * [ConstrainedBox], which applies its constraints in all cases, not just
   when the incoming constraints are unbounded.
 * [SizedBox], which lets you specify tight constraints by explicitly
   specifying the height or width.
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