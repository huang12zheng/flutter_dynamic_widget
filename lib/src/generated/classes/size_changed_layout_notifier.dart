import '../base.dart';

class SizeChangedLayoutNotifierBase extends BaseWidget {
    SizeChangedLayoutNotifierBase();

    factory SizeChangedLayoutNotifierBase.fromJson(Map<String, dynamic> data) {
        return SizeChangedLayoutNotifierBase();
    }

    @override
    String get description => r"""
A widget that automatically dispatches a [SizeChangedLayoutNotification]
when the layout dimensions of its child change.

The notification is not sent for the initial layout (since the size doesn't
change in that case, it's just established).

To listen for the notification dispatched by this widget, use a
[NotificationListener<SizeChangedLayoutNotification>].

The [Material] class listens for [LayoutChangedNotification]s, including
[SizeChangedLayoutNotification]s, to repaint [InkResponse] and [InkWell] ink
effects. When a widget is likely to change size, wrapping it in a
[SizeChangedLayoutNotifier] will cause the ink effects to correctly repaint
when the child changes size.

See also:

 * [Notification], the base class for notifications that bubble through the
   widget tree.
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