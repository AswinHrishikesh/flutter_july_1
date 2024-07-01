import 'package:flutter/material.dart';
import 'package:flutter_july_1/dummy_db.dart';
import 'package:flutter_july_1/view/homescreen/widgets/chats_tile.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ChatsTitle(
              username: DummyDb.chatTitleData[index]["Name"],
              lastmessage: DummyDb.chatTitleData[index]["lastMessage"],
              time: DummyDb.chatTitleData[index]["time"],
              count: DummyDb.chatTitleData[index]["count"],
              imageUrl: DummyDb.chatTitleData[index]["url"],
            ),
        separatorBuilder: (context, index) => Divider(
              indent: 50,
              endIndent: 30,
              color: Colors.grey,
              height: 0,
            ),
        itemCount: 10);
  }
}
