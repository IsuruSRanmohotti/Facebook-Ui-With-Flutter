import 'package:flutter/material.dart';
import 'package:widget_explain_app/screens/widgets/tool_bar.dart';

import 'widgets/icon_bar.dart';
import 'widgets/new_post_bar.dart';
import 'widgets/post_list_view.dart';
import 'widgets/stories_listview.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  final profilePic = "https://randomuser.me/api/portraits/women/60.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(children: [
        const ToolBar(),
        IconBar(profilePic: profilePic),
        const Divider(
          thickness: 0.5,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                NewPostBar(profilePic: profilePic),
                const Divider(
                  color: Colors.black38,
                  thickness: 10,
                ),
                StoriesListView(profilePic: profilePic),
                const Divider(
                  color: Colors.black38,
                  thickness: 10,
                ),
                PostListView(profilePic: profilePic)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
