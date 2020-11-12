import '../base.dart';

class RestorationScopeBase extends BaseWidget {
    RestorationScopeBase();

    factory RestorationScopeBase.fromJson(Map<String, dynamic> data) {
        return RestorationScopeBase();
    }

    @override
    String get description => r"""
Creates a new scope for restoration IDs used by descendant widgets to claim
[RestorationBucket]s.

{@template flutter.widgets.restoration.scope}
A restoration scope inserts a [RestorationBucket] into the widget tree,
which descendant widgets can access via [RestorationScope.of]. It is
uncommon for descendants to directly store data in this bucket. Instead,
descendant widgets should consider storing their own restoration data in a
child bucket claimed with [RestorationBucket.claimChild] from the bucket
provided by this scope.
{@endtemplate}

The bucket inserted into the widget tree by this scope has been claimed from
the surrounding [RestorationScope] using the provided [restorationId]. If
the [RestorationScope] is moved to a different part of the widget tree under
a different [RestorationScope], the bucket owned by this scope with all its
children and the data contained in them is moved to the new scope as well.

This widget will not make a [RestorationBucket] available to descendants if
[restorationId] is null or when there is no surrounding restoration scope to
claim a bucket from. In this case, descendant widgets invoking
[RestorationScope.of] will receive null as a return value indicating that no
bucket is available for storing restoration data. This will turn off state
restoration for the widget subtree.

See also:

 * [RootRestorationScope], which inserts the root bucket provided by
   the [RestorationManager] into the widget tree and makes it accessible
   for descendants via [RestorationScope.of].
 * [UnmanagedRestorationScope], which inserts a provided [RestorationBucket]
   into the widget tree and makes it accessible for descendants via
   [RestorationScope.of].
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