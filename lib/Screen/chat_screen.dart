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
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.chat)),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            //hoverColor: Colors.red,
            //visualDensity:VisualDensity.standard,
            //tileColor: Colors.black26,
            selectedTileColor: Colors.red,
            // style:ListTileTheme.of(),
            //selected: true,
            //contentPadding: EdgeInsets.all(12),
            // selectedColor: Colors.black,
            horizontalTitleGap: 23,
            //enabled: false,
            //shape: OutlineInputBorder(borderRadius: BorderRadius.circular(56),borderSide:  BorderSide(color:  Colors.lightBlue,width: 3)),
            //focusColor: Colors.black,
            //titleAlignment: ListTileTitleAlignment.titleHeight,
            iconColor: Colors.red,
            leading: CircleAvatar(
              radius: 25,
              child: Text("$index"),
            ),
            title: Text(data[index]["title"]),
            subtitle: const Row(
              children: [
                Icon(Icons.photo_rounded, size: 16),
                Text("Photo"),
              ],
            ),
            trailing: Text(data[index]["trailing"]),
          );
        },
        //semanticChildCount:6,
        addRepaintBoundaries: false,
        //padding: EdgeInsets.all(12),
        //itemExtent: 150,
        // physics: const BouncingScrollPhysics(
        //   decelerationRate: ScrollDecelerationRate.normal,
        //   parent: BouncingScrollPhysics(),
      ),
    );
  }
}
