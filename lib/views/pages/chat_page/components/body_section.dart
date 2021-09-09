import 'package:chat_0818/views/pages/chat_page/components/chat_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index_provider.dart';

class BodySection extends StatefulWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  _BodySectionState createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: context.watch<IndexProvider>().controller,
      onPageChanged: (newIdx) =>
          context.read<IndexProvider>().changeIndex(newIdx),
      children: <Widget>[
        ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          itemBuilder: (ctx, idx) => ChatListItem(
            topic: '$idx',
          ),
          separatorBuilder: (ctx, idx) => SizedBox(
            height: 15,
          ),
          itemCount: 20,
        ),
        Container(
          child: Center(
            child: Text('Page 2'),
          ),
        ),
        Container(
          child: Center(
            child: Text('Page 3'),
          ),
        ),
      ],
    );
  }
}
