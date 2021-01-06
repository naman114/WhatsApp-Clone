import 'package:WhatsApp_Clone/chats.dart';
import 'package:WhatsApp_Clone/status.dart';
import 'package:flutter/material.dart';
import 'calls.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                //print('Width = ${screenSize.width}');
                //print('Height = ${screenSize.height}');
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(14),
            isScrollable: true,
            tabs: [
              Icon(Icons.camera_alt),
              Container(
                width: 90,
                child: Text("CHATS"),
                alignment: Alignment.center,
              ),
              Container(
                width: 90,
                child: Text("STATUS"),
                alignment: Alignment.center,
              ),
              Container(
                width: 90,
                child: Text("CALLS"),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
