import '../base.dart';

class ListViewBase extends BaseWidget {
    ListViewBase();

    factory ListViewBase.fromJson(Map<String, dynamic> data) {
        return ListViewBase();
    }

    @override
    String get description => r"""
A scrollable list of widgets arranged linearly.

{@youtube 560 315 https://www.youtube.com/watch?v=KJpkjHGiI5A}

[ListView] is the most commonly used scrolling widget. It displays its
children one after another in the scroll direction. In the cross axis, the
children are required to fill the [ListView].

If non-null, the [itemExtent] forces the children to have the given extent
in the scroll direction. Specifying an [itemExtent] is more efficient than
letting the children determine their own extent because the scrolling
machinery can make use of the foreknowledge of the children's extent to save
work, for example when the scroll position changes drastically.

There are four options for constructing a [ListView]:

 1. The default constructor takes an explicit [List<Widget>] of children. This
    constructor is appropriate for list views with a small number of
    children because constructing the [List] requires doing work for every
    child that could possibly be displayed in the list view instead of just
    those children that are actually visible.

 2. The [ListView.builder] constructor takes an [IndexedWidgetBuilder], which
    builds the children on demand. This constructor is appropriate for list views
    with a large (or infinite) number of children because the builder is called
    only for those children that are actually visible.

 3. The [ListView.separated] constructor takes two [IndexedWidgetBuilder]s:
    `itemBuilder` builds child items on demand, and `separatorBuilder`
    similarly builds separator children which appear in between the child items.
    This constructor is appropriate for list views with a fixed number of children.

 4. The [ListView.custom] constructor takes a [SliverChildDelegate], which provides
    the ability to customize additional aspects of the child model. For example,
    a [SliverChildDelegate] can control the algorithm used to estimate the
    size of children that are not actually visible.

To control the initial scroll offset of the scroll view, provide a
[controller] with its [ScrollController.initialScrollOffset] property set.

By default, [ListView] will automatically pad the list's scrollable
extremities to avoid partial obstructions indicated by [MediaQuery]'s
padding. To avoid this behavior, override with a zero [padding] property.

{@tool snippet}
This example uses the default constructor for [ListView] which takes an
explicit [List<Widget>] of children. This [ListView]'s children are made up
of [Container]s with [Text].

![A ListView of 3 amber colored containers with sample text.](https://flutter.github.io/assets-for-api-docs/assets/widgets/list_view.png)

```dart
ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ],
)
```
{@end-tool}

{@tool snippet}
This example mirrors the previous one, creating the same list using the
[ListView.builder] constructor. Using the [IndexedWidgetBuilder], children
are built lazily and can be infinite in number.

![A ListView of 3 amber colored containers with sample text.](https://flutter.github.io/assets-for-api-docs/assets/widgets/list_view_builder.png)

```dart
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  }
);
```
{@end-tool}

{@tool snippet}
This example continues to build from our the previous ones, creating a
similar list using [ListView.separated]. Here, a [Divider] is used as a
separator.

![A ListView of 3 amber colored containers with sample text and a Divider
between each of them.](https://flutter.github.io/assets-for-api-docs/assets/widgets/list_view_separated.png)

```dart
final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

ListView.separated(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(),
);
```
{@end-tool}

## Child elements' lifecycle

### Creation

While laying out the list, visible children's elements, states and render
objects will be created lazily based on existing widgets (such as when using
the default constructor) or lazily provided ones (such as when using the
[ListView.builder] constructor).

### Destruction

When a child is scrolled out of view, the associated element subtree,
states and render objects are destroyed. A new child at the same position
in the list will be lazily recreated along with new elements, states and
render objects when it is scrolled back.

### Destruction mitigation

In order to preserve state as child elements are scrolled in and out of
view, the following options are possible:

 * Moving the ownership of non-trivial UI-state-driving business logic
   out of the list child subtree. For instance, if a list contains posts
   with their number of upvotes coming from a cached network response, store
   the list of posts and upvote number in a data model outside the list. Let
   the list child UI subtree be easily recreate-able from the
   source-of-truth model object. Use [StatefulWidget]s in the child
   widget subtree to store instantaneous UI state only.

 * Letting [KeepAlive] be the root widget of the list child widget subtree
   that needs to be preserved. The [KeepAlive] widget marks the child
   subtree's top render object child for keepalive. When the associated top
   render object is scrolled out of view, the list keeps the child's render
   object (and by extension, its associated elements and states) in a cache
   list instead of destroying them. When scrolled back into view, the render
   object is repainted as-is (if it wasn't marked dirty in the interim).

   This only works if `addAutomaticKeepAlives` and `addRepaintBoundaries`
   are false since those parameters cause the [ListView] to wrap each child
   widget subtree with other widgets.

 * Using [AutomaticKeepAlive] widgets (inserted by default when
   `addAutomaticKeepAlives` is true). [AutomaticKeepAlive] allows descendant
   widgets to control whether the subtree is actually kept alive or not.
   This behavior is in contrast with [KeepAlive], which will unconditionally keep
   the subtree alive.

   As an example, the [EditableText] widget signals its list child element
   subtree to stay alive while its text field has input focus. If it doesn't
   have focus and no other descendants signaled for keepalive via a
   [KeepAliveNotification], the list child element subtree will be destroyed
   when scrolled away.

   [AutomaticKeepAlive] descendants typically signal it to be kept alive
   by using the [AutomaticKeepAliveClientMixin], then implementing the
   [AutomaticKeepAliveClientMixin.wantKeepAlive] getter and calling
   [AutomaticKeepAliveClientMixin.updateKeepAlive].

## Transitioning to [CustomScrollView]

A [ListView] is basically a [CustomScrollView] with a single [SliverList] in
its [CustomScrollView.slivers] property.

If [ListView] is no longer sufficient, for example because the scroll view
is to have both a list and a grid, or because the list is to be combined
with a [SliverAppBar], etc, it is straight-forward to port code from using
[ListView] to using [CustomScrollView] directly.

The [key], [scrollDirection], [reverse], [controller], [primary], [physics],
and [shrinkWrap] properties on [ListView] map directly to the identically
named properties on [CustomScrollView].

The [CustomScrollView.slivers] property should be a list containing either a
[SliverList] or a [SliverFixedExtentList]; the former if [itemExtent] on the
[ListView] was null, and the latter if [itemExtent] was not null.

The [childrenDelegate] property on [ListView] corresponds to the
[SliverList.delegate] (or [SliverFixedExtentList.delegate]) property. The
[ListView] constructor's `children` argument corresponds to the
[childrenDelegate] being a [SliverChildListDelegate] with that same
argument. The [ListView.builder] constructor's `itemBuilder` and
`itemCount` arguments correspond to the [childrenDelegate] being a
[SliverChildBuilderDelegate] with the equivalent arguments.

The [padding] property corresponds to having a [SliverPadding] in the
[CustomScrollView.slivers] property instead of the list itself, and having
the [SliverList] instead be a child of the [SliverPadding].

[CustomScrollView]s don't automatically avoid obstructions from [MediaQuery]
like [ListView]s do. To reproduce the behavior, wrap the slivers in
[SliverSafeArea]s.

Once code has been ported to use [CustomScrollView], other slivers, such as
[SliverGrid] or [SliverAppBar], can be put in the [CustomScrollView.slivers]
list.

{@tool snippet}

Here are two brief snippets showing a [ListView] and its equivalent using
[CustomScrollView]:

```dart
ListView(
  shrinkWrap: true,
  padding: const EdgeInsets.all(20.0),
  children: <Widget>[
    const Text("I'm dedicating every day to you"),
    const Text('Domestic life was never quite my style'),
    const Text('When you smile, you knock me out, I fall apart'),
    const Text('And I thought I was so smart'),
  ],
)
```
{@end-tool}
{@tool snippet}

```dart
CustomScrollView(
  shrinkWrap: true,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            const Text("I'm dedicating every day to you"),
            const Text('Domestic life was never quite my style'),
            const Text('When you smile, you knock me out, I fall apart'),
            const Text('And I thought I was so smart'),
          ],
        ),
      ),
    ),
  ],
)
```
{@end-tool}

## Special handling for an empty list

A common design pattern is to have a custom UI for an empty list. The best
way to achieve this in Flutter is just conditionally replacing the
[ListView] at build time with whatever widgets you need to show for the
empty list state:

{@tool snippet}

Example of simple empty list interface:

```dart
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Empty List Test')),
    body: itemCount > 0
      ? ListView.builder(
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
            );
          },
        )
      : Center(child: const Text('No items')),
  );
}
```
{@end-tool}

## Selection of list items

`ListView` has no built-in notion of a selected item or items. For a small
example of how a caller might wire up basic item selection, see
[ListTile.selected].

See also:

 * [SingleChildScrollView], which is a scrollable widget that has a single
   child.
 * [PageView], which is a scrolling list of child widgets that are each the
   size of the viewport.
 * [GridView], which is a scrollable, 2D array of widgets.
 * [CustomScrollView], which is a scrollable widget that creates custom
   scroll effects using slivers.
 * [ListBody], which arranges its children in a similar manner, but without
   scrolling.
 * [ScrollNotification] and [NotificationListener], which can be used to watch
   the scroll position without using a [ScrollController].
 * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).
 * Cookbook: [Use lists](https://flutter.dev/docs/cookbook/lists/basic-list)
 * Cookbook: [Work with long lists](https://flutter.dev/docs/cookbook/lists/long-lists)
 * Cookbook: [Create a horizontal list](https://flutter.dev/docs/cookbook/lists/horizontal-list)
 * Cookbook: [Create lists with different types of items](https://flutter.dev/docs/cookbook/lists/mixed-list)
 * Cookbook: [Implement swipe to dismiss](https://flutter.dev/docs/cookbook/gestures/dismissible)
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