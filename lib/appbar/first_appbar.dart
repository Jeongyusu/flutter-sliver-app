import 'package:flutter/material.dart';

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true, // 상단 앱바가 나오게하기
          floating: true, // 상단 앱바가 나오게하기
          pinned: false,
          title: Text("appbar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250,
          flexibleSpace: Container(
            color: Colors.red,
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverAppBar(
          pinned: true, // 앱바 고정
          title: Text("appbar1", style: TextStyle(color: Colors.white)),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        )
      ],
    );
  }
}
