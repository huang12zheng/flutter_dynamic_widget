import '../base.dart';

class GridViewBase extends BaseWidget {
    GridViewBase();

    factory GridViewBase.fromJson(Map<String, dynamic> data) {
        return GridViewBase();
    }

    @override
    String get description => r"""
A scrollable, 2D array of widgets.

The main axis direction of a grid is the direction in which it scrolls (the
[scrollDirection]).

The most commonly used grid layouts are [GridView.count], which creates a
layout with a fixed number of tiles in the cross axis, and
[GridView.extent], which creates a layout with tiles that have a maximum
cross-axis extent. A custom [SliverGridDelegate] can produce an arbitrary 2D
arrangement of children, including arrangements that are unaligned or
overlapping.

To create a grid with a large (or infinite) number of children, use the
[GridView.builder] constructor with either a
[SliverGridDelegateWithFixedCrossAxisCount] or a
[SliverGridDelegateWithMaxCrossAxisExtent] for the [gridDelegate].

To use a custom [SliverChildDelegate], use [GridView.custom].

To create a linear array of children, use a [ListView].

To control the initial scroll offset of the scroll view, provide a
[controller] with its [ScrollController.initialScrollOffset] property set.

## Transitioning to [CustomScrollView]

A [GridView] is basically a [CustomScrollView] with a single [SliverGrid] in
its [CustomScrollView.slivers] property.

If [GridView] is no longer sufficient, for example because the scroll view
is to have both a grid and a list, or because the grid is to be combined
with a [SliverAppBar], etc, it is straight-forward to port code from using
[GridView] to using [CustomScrollView] directly.

The [key], [scrollDirection], [reverse], [controller], [primary], [physics],
and [shrinkWrap] properties on [GridView] map directly to the identically
named properties on [CustomScrollView].

The [CustomScrollView.slivers] property should be a list containing just a
[SliverGrid].

The [childrenDelegate] property on [GridView] corresponds to the
[SliverGrid.delegate] property, and the [gridDelegate] property on the
[GridView] corresponds to the [SliverGrid.gridDelegate] property.

The [GridView], [GridView.count], and [GridView.extent]
constructors' `children` arguments correspond to the [childrenDelegate]
being a [SliverChildListDelegate] with that same argument. The
[GridView.builder] constructor's `itemBuilder` and `childCount` arguments
correspond to the [childrenDelegate] being a [SliverChildBuilderDelegate]
with the matching arguments.

The [GridView.count] and [GridView.extent] constructors create
custom grid delegates, and have equivalently named constructors on
[SliverGrid] to ease the transition: [SliverGrid.count] and
[SliverGrid.extent] respectively.

The [padding] property corresponds to having a [SliverPadding] in the
[CustomScrollView.slivers] property instead of the grid itself, and having
the [SliverGrid] instead be a child of the [SliverPadding].

By default, [ListView] will automatically pad the list's scrollable
extremities to avoid partial obstructions indicated by [MediaQuery]'s
padding. To avoid this behavior, override with a zero [padding] property.

{@tool snippet}
The following example demonstrates how to override the default top padding
using [MediaQuery.removePadding].

```dart
Widget myWidget(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) => ListTile(title: Text('item $index')),
    )
  );
}
```
{@end-tool}

Once code has been ported to use [CustomScrollView], other slivers, such as
[SliverList] or [SliverAppBar], can be put in the [CustomScrollView.slivers]
list.

{@tool snippet}
This example demonstrates how to create a [GridView] with two columns. The
children are spaced apart using the `crossAxisSpacing` and `mainAxisSpacing`
properties.

![The GridView displays six children with different background colors arranged in two columns](https://flutter.github.io/assets-for-api-docs/assets/widgets/grid_view.png)

```dart
GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      color: Colors.teal[600],
    ),
  ],
)
```
{@end-tool}

{@tool snippet}
This example shows how to create the same grid as the previous example
using a [CustomScrollView] and a [SliverGrid].

![The CustomScrollView contains a SliverGrid that displays six children with different background colors arranged in two columns](https://flutter.github.io/assets-for-api-docs/assets/widgets/grid_view_custom_scroll.png)

```dart
CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.green[600],
          ),
        ],
      ),
    ),
  ],
)
```
{@end-tool}

See also:

 * [SingleChildScrollView], which is a scrollable widget that has a single
   child.
 * [ListView], which is scrollable, linear list of widgets.
 * [PageView], which is a scrolling list of child widgets that are each the
   size of the viewport.
 * [CustomScrollView], which is a scrollable widget that creates custom
   scroll effects using slivers.
 * [SliverGridDelegateWithFixedCrossAxisCount], which creates a layout with
   a fixed number of tiles in the cross axis.
 * [SliverGridDelegateWithMaxCrossAxisExtent], which creates a layout with
   tiles that have a maximum cross-axis extent.
 * [ScrollNotification] and [NotificationListener], which can be used to watch
   the scroll position without using a [ScrollController].
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