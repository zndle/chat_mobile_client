import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/index_provider.dart';

class BottomSession extends StatelessWidget {
  const BottomSession({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<IndexProvider>().index,
      type: BottomNavigationBarType.fixed,
      onTap: (newIdx) => context.read<IndexProvider>().changeIndex(newIdx),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '聊天',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: '通讯录',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '设置',
        ),
      ],
    );
  }
}
