import 'package:flutter/material.dart';
import 'package:intershiptest/Widgets/CustomShareButton.dart';

import 'MediaSection.dart';
import 'PersonWidget.dart';
import 'SettingsSection.dart';
import 'TagsSection.dart';
import 'UserInfoSection.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late ScrollController _scrollController;
  bool isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        final offset = _scrollController.offset;
        final isCurrentlyCollapsed = offset > 200.0;
        if (isCurrentlyCollapsed != isCollapsed) {
          setState(() {
            isCollapsed = isCurrentlyCollapsed;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final double appBarHeight = constraints.maxHeight;
                  final double statusBarHeight =
                      MediaQuery.of(context).padding.top;
                  final bool isCollapsed =
                      appBarHeight - statusBarHeight <= kToolbarHeight;

                  return FlexibleSpaceBar(
                    title: isCollapsed
                        ?  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('images/img3.png'), // Replace with your image path
                                  radius: 25,
                                ),
                                SizedBox(width: 10.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'The Weeknd',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      'Community • 11K Members',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                        : null, // Only show title when collapsed
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'images/img3.png',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.3),
                        ),
                        if (!isCollapsed)
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 78.0,
                              color: const Color(0xffC32422),
                              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'The Weeknd',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Community • 11K Members',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomShareButton(),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
              backgroundColor: const Color(0xffC32422),
              leading: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {

                  },
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(isCollapsed ? Icons.more_vert : null,
                      color: Colors.white),
                  onPressed: () {
                    if (isCollapsed) {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16.0)),
                        ),
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 40,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(2.0),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                ListTile(
                                  leading: Icon(Icons.link),
                                  title: Text('Invite'),
                                  onTap: () {

                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.person_add_alt_1_outlined),
                                  title: Text('Add member'),
                                  onTap: () {

                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.group_add_outlined),
                                  title: Text('Add Group'),
                                  onTap: () {

                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: <Widget>[
                      UserInfoSection(),
                      TagsSection(),
                      MediaSection(),
                      SettingsSection(),
                      UserList(),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
