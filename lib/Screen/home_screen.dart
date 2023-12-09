import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliverappbar/Screen/calls_screen.dart';
import 'package:sliverappbar/Screen/chat_screen.dart';
import 'package:sliverappbar/Screen/group_screen.dart';
import 'package:sliverappbar/Screen/update_screen.dart';


//
class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({super.key});

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  final ScrollController _innerScrollController = ScrollController();
  @override
  void initState() {
    print("hello");
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
    _innerScrollController.addListener(() {
      print('Scroll position: ${_innerScrollController.offset}');
    });
  }

  List<Widget> list = [
    Icon(Icons.groups),
    Text("Chats", style: TextStyle(fontWeight: FontWeight.bold)),
    Text("Updates", style: TextStyle(fontWeight: FontWeight.bold)),
    Text("Calls", style: TextStyle(fontWeight: FontWeight.bold))
  ];
  List<Widget> screen = [
    const GroupScreen(),
     ChatPage(),
    const UpdateScreen(),
    const CallsScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar
            (
            //expandedHeight: 400,
            //expandedHeight: ,
           // centerTitle: true,//use for center place your title
            //clipBehavior: Clip.antiAliasWithSaveLayer,
           // titleTextStyle: used when you set default property in flutter ,
           // shadowColor: Colors.black38,
           // surfaceTintColor: Colors.red,
           // automaticallyImplyLeading: false,
            //collapsedHeight: 100 ,//appbar work  as simple appbar
            //excludeHeaderSemantics: true,
            forceElevated: true,//used for you don't want to change colour of the appbar when the inner widget scroll use that property
            //forceMaterialTransparency: true,//appbar colour is white
           // stretch:true ,
                //snap: true,
            //foregroundColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle.light,

            //elevation: 12,
            //flexibleSpace: Icon(Icons.account_circle_sharp),
            pinned: true,//used for the hold appbar when inner screen scrolled
            floating: true,//used for enimation of the sliver appbar
            iconTheme: const IconThemeData(color: Colors.white),
            toolbarHeight: 60,
            backgroundColor: Colors.teal.shade900,//dont used tansperent colour
            //const Color(0xff0D5B53),
           // leadingWidth: 10,
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
