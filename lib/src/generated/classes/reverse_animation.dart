import '../base.dart';

class ReverseAnimationBase extends BaseWidget {
    ReverseAnimationBase();

    factory ReverseAnimationBase.fromJson(Map<String, dynamic> data) {
        return ReverseAnimationBase();
    }

    @override
    String get description => r"""
An animation that is the reverse of another animation.

If the parent animation is running forward from 0.0 to 1.0, this animation
is running in reverse from 1.0 to 0.0.

Using a [ReverseAnimation] is different from simply using a [Tween] with a
begin of 1.0 and an end of 0.0 because the tween does not change the status
or direction of the animation.

See also:

 * [Curve.flipped] and [FlippedCurve], which provide a similar effect but on
   [Curve]s.
 * [CurvedAnimation], which can take separate curves for when the animation
   is going forward than for when it is going in reverse.
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