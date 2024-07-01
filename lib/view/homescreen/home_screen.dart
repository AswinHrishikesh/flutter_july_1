import 'package:flutter/material.dart';
import 'package:flutter_july_1/view/homescreen/tabs/chats_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075E54),
            title: Text(
              "whatsapp",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.white)),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.white54,
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    icon: Icon(Icons.groups),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                  Tab(
                    text: "Status",
                  ),
                ]),
          ),
          body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            Container(
              color: Colors.red,
            ),
            ChatsTab(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blueAccent,
            ),
          ]),
        ));
  }
}
