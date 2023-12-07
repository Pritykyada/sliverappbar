import 'package:flutter/material.dart';
import 'package:sliverappbar/Screen/calls_screen.dart';
import 'package:sliverappbar/Screen/chat_screen.dart';
import 'package:sliverappbar/Screen/group_screen.dart';
import 'package:sliverappbar/Screen/update_screen.dart';



class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({super.key});

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    print("hello");
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  List<Widget> list = [
    Icon(Icons.groups),
    Text("Chats", style: TextStyle(fontWeight: FontWeight.bold)),
    Text("Updates", style: TextStyle(fontWeight: FontWeight.bold)),
    Text("Calls", style: TextStyle(fontWeight: FontWeight.bold))
  ];
  List<Widget> screen = [
    const GroupScreen(),
    const ChatPage(),
    const UpdateScreen(),
    const CallsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            iconTheme: const IconThemeData(color: Colors.white),
            toolbarHeight: 60,
            backgroundColor: Colors.teal.shade900,
            //const Color(0xff0D5B53),
            leadingWidth: 140,
            title: const Text("WhatsApp",
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.add_alert),
              const SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
                controller: _controller,
                // indicator: BoxDecoration(
                //    //borderRadius: BorderRadius.circular(1)

                //   // border: Border(
                //   //   bottom: BorderSide(
                //   //     color: Colors.blue, // Change the color here
                //   //     width: 3.0,
                //   //   ),
                //   // ),
                // ),
                //splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
                //splashBorderRadius: BorderRadius.circular(12),
                dividerColor: Colors.teal.shade800,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                //indicator: UnderlineTabIndicator(insets: EdgeInsets.only(left: 3)),
                indicatorWeight: 2,
                unselectedLabelColor: Colors.white54,
                labelColor: Colors.white,
                tabs: list
                    .map((e) => Tab(
                          child: e,
                        ))
                    .toList()),
          )
        ],
        body: TabBarView(
          controller: _controller,
          children: screen,
        ),
      ),
    );
  }
}
