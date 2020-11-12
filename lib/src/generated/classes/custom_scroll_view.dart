import '../base.dart';

class CustomScrollViewBase extends BaseWidget {
    CustomScrollViewBase();

    factory CustomScrollViewBase.fromJson(Map<String, dynamic> data) {
        return CustomScrollViewBase();
    }

    @override
    String get description => r"""
A [ScrollView] that creates custom scroll effects using slivers.

A [CustomScrollView] lets you supply [slivers] directly to create various
scrolling effects, such as lists, grids, and expanding headers. For example,
to create a scroll view that contains an expanding app bar followed by a
list and a grid, use a list of three slivers: [SliverAppBar], [SliverList],
and [SliverGrid].

[Widget]s in these [slivers] must produce [RenderSliver] objects.

To control the initial scroll offset of the scroll view, provide a
[controller] with its [ScrollController.initialScrollOffset] property set.

{@animation 400 376 https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_scroll_view.mp4}

{@tool snippet}

This sample code shows a scroll view that contains a flexible pinned app
bar, a grid, and an infinite list.

```dart
CustomScrollView(
  slivers: <Widget>[
    const SliverAppBar(
      pinned: true,
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Demo'),
      ),
    ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 9)],
            child: Text('Grid Item $index'),
          );
        },
        childCount: 20,
      ),
    ),
    SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('List Item $index'),
          );
        },
      ),
    ),
  ],
)
```
{@end-tool}

{@tool dartpad --template=stateful_widget_material}

By default, if items are inserted at the "top" of a scrolling container like
[ListView] or [CustomScrollView], the top item and all of the items below it
are scrolled downwards. In some applications, it's preferable to have the
top of the list just grow upwards, without changing the scroll position.
This example demonstrates how to do that with a [CustomScrollView] with
two [SliverList] children, and the [CustomScrollView.center] set to the key
of the bottom SliverList. The top one SliverList will grow upwards, and the
bottom SliverList will grow downwards.

```dart
List<int> top = [];
List<int> bottom = [0];

@override
Widget build(BuildContext context) {
  const Key centerKey = ValueKey('bottom-sliver-list');
  return Scaffold(
    appBar: AppBar(
      title: const Text('Press on the plus to add items above and below'),
      leading: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            top.add(-top.length - 1);
            bottom.add(bottom.length);
          });
        },
      ),
    ),
    body: CustomScrollView(
      center: centerKey,
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[200 + top[index] % 4 * 100],
                height: 100 + top[index] % 4 * 20.0,
                child: Text('Item: ${top[index]}'),
              );
            },
            childCount: top.length,
          ),
        ),
        SliverList(
          key: centerKey,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[200 + bottom[index] % 4 * 100],
                height: 100 + bottom[index] % 4 * 20.0,
                child: Text('Item: ${bottom[index]}'),
              );
            },
            childCount: bottom.length,
          ),
        ),
      ],
    ),
  );
}
```
{@end-tool}

## Accessibility

A [CustomScrollView] can allow Talkback/VoiceOver to make announcements
to the user when the scroll state changes. For example, on Android an
announcement might be read as "showing items 1 to 10 of 23". To produce
this announcement, the scroll view needs three pieces of information:

  * The first visible child index.
  * The total number of children.
  * The total number of visible children.

The last value can be computed exactly by the framework, however the first
two must be provided. Most of the higher-level scrollable widgets provide
this information automatically. For example, [ListView] provides each child
widget with a semantic index automatically and sets the semantic child
count to the length of the list.

To determine visible indexes, the scroll view needs a way to associate the
generated semantics of each scrollable item with a semantic index. This can
be done by wrapping the child widgets in an [IndexedSemantics].

This semantic index is not necessarily the same as the index of the widget in
the scrollable, because some widgets may not contribute semantic
information. Consider a [ListView.separated]: every other widget is a
divider with no semantic information. In this case, only odd numbered
widgets have a semantic index (equal to the index ~/ 2). Furthermore, the
total number of children in this example would be half the number of
widgets. (The [ListView.separated] constructor handles this
automatically; this is only used here as an example.)

The total number of visible children can be provided by the constructor
parameter `semanticChildCount`. This should always be the same as the
number of widgets wrapped in [IndexedSemantics].

See also:

 * [SliverList], which is a sliver that displays linear list of children.
 * [SliverFixedExtentList], which is a more efficient sliver that displays
   linear list of children that have the same extent along the scroll axis.
 * [SliverGrid], which is a sliver that displays a 2D array of children.
 * [SliverPadding], which is a sliver that adds blank space around another
   sliver.
 * [SliverAppBar], which is a sliver that displays a header that can expand
   and float as the scroll view scrolls.
 * [ScrollNotification] and [NotificationListener], which can be used to watch
   the scroll position without using a [ScrollController].
 * [IndexedSemantics], which allows annotating child lists with an index
   for scroll announcements.
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