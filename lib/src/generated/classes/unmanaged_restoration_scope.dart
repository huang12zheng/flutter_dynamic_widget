import '../base.dart';

class UnmanagedRestorationScopeBase extends BaseWidget {
    UnmanagedRestorationScopeBase();

    factory UnmanagedRestorationScopeBase.fromJson(Map<String, dynamic> data) {
        return UnmanagedRestorationScopeBase();
    }

    @override
    String get description => r"""
Inserts a provided [RestorationBucket] into the widget tree and makes it
available to descendants via [RestorationScope.of].

{@macro flutter.widgets.restoration.scope}

If [bucket] is null, no restoration bucket is made available to descendant
widgets ([RestorationScope.of] invoked from a descendant will return null).
This effectively turns off state restoration for the subtree because no
bucket for storing restoration data is made available.

See also:

 * [RestorationScope], which inserts a bucket obtained from a surrounding
   restoration scope into the widget tree and makes it accessible
   for descendants via [RestorationScope.of].
 * [RootRestorationScope], which inserts the root bucket provided by
   the [RestorationManager] into the widget tree and makes it accessible
   for descendants via [RestorationScope.of].
 * [RestorationMixin], which may be used in [State] objects to manage the
   restoration data of a [StatefulWidget] instead of manually interacting
   with [RestorationScope]s and [RestorationBucket]s.
 * [RestorationManager], which describes the basic concepts of state
   restoration in Flutter.
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