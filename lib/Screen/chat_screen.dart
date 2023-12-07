import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatState();
}

class _ChatState extends State<ChatPage> {
  final List data = [
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
    {
      "leading": "R",
      "title": "Riddhi",
      "subtitle": {
        "icon": const Icon(Icons.photo_rounded, size: 16),
        "text": "photo",
      },
      "trailing": "yesterday"
    },
  ];

  //final ScrollController _scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //
    //   body:
    return SafeArea(

        top: false,
        bottom: false,
        child: Scaffold(
          floatingActionButton:
                 FloatingActionButton(onPressed: () {}, child: const Icon(Icons.chat)),
        body:  Builder(
          // This Builder is needed to provide a BuildContext that is
          // "inside" the NestedScrollView, so that
          // sliverOverlapAbsorberHandleFor() can find the
          // NestedScrollView.
          builder: (BuildContext context) {
            return CustomScrollView(
              // The "controller" and "primary" members should be left
              // unset, so that the NestedScrollView can control this
              // inner scroll view.
              // If the "controller" property is set, then this scroll
              // view will not be associated with the NestedScrollView.
              // The PageStorageKey should be unique to this ScrollView;
              // it allows the list to remember its scroll position when
              // the tab view is not on the screen.

              slivers: <Widget>[
                SliverOverlapInjector(
                  // This is the flip side of the SliverOverlapAbsorber
                  // above.
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  // In this example, the inner scroll view has
                  // fixed-height list items, hence the use of
                  // SliverFixedExtentList. However, one could use any
                  // sliver widget here, e.g. SliverList or SliverGrid.
                  sliver: SliverFixedExtentList(
                    // The items in this example are fixed to 48 pixels
                    // high. This matches the Material Design spec for
                    // ListTile widgets.
                    itemExtent: 48.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        // This builder is called for each child.
                        // In this example, we just number each list item.
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                      // The childCount of the SliverChildBuilderDelegate
                      // specifies how many children this inner list
                      // has. In this example, each tab has a list of
                      // exactly 30 items, but this is arbitrary.
                      childCount: 30,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
// ListView.builder(
// itemCount: data.length,
// itemBuilder: (context, index) {
// return ListTile(
// onTap: () {},
// //hoverColor: Colors.red,
// //visualDensity:VisualDensity.standard,
// //tileColor: Colors.black26,
// selectedTileColor: Colors.red,
// // style:ListTileTheme.of(),
// //selected: true,
// //contentPadding: EdgeInsets.all(12),
// // selectedColor: Colors.black,
// horizontalTitleGap: 23,
// //enabled: false,
// //shape: OutlineInputBorder(borderRadius: BorderRadius.circular(56),borderSide:  BorderSide(color:  Colors.lightBlue,width: 3)),
// //focusColor: Colors.black,
// //titleAlignment: ListTileTitleAlignment.titleHeight,
// iconColor: Colors.red,
// leading: CircleAvatar(
// radius: 25,
// child: Text("$index"),
// ),
// title: Text(data[index]["title"]),
// subtitle: const Row(
// children: [
// Icon(Icons.photo_rounded, size: 16),
// Text("Photo"),
// ],
// ),
// trailing: Text(data[index]["trailing"]),
// );
// },
// //semanticChildCount:6,
// addRepaintBoundaries: false,
// //padding: EdgeInsets.all(12),
// //itemExtent: 150,
// // physics: const BouncingScrollPhysics(
// //   decelerationRate: ScrollDecelerationRate.normal,
// //   parent: BouncingScrollPhysics(),
// // ),
  }
}
